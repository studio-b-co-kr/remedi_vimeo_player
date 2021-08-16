import 'dart:convert';
import 'dart:developer' as dev;

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


class VimeoManager {
  static String? vimeoAccessKey;
  static String? get accessKey => vimeoAccessKey;


}


class VimeoPlayer extends StatefulWidget {
  final VimeoVideo vimeoVideo;
  final BetterPlayerController videoController;

  VimeoPlayer(
      {Key? key, required this.vimeoVideo, required this.videoController})
      : super(key: key);

  @override
  _VimeoPlayerState createState() => _VimeoPlayerState();
}

class _VimeoPlayerState extends State<VimeoPlayer> {
  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    widget.videoController.dispose(forceDispose: true);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    dev.log("screen orientation = ${MediaQuery.of(context).orientation}",
        name: "VimeoPlayer");
    dev.log("screen width = ${MediaQuery.of(context).size.width}",
        name: "VimeoPlayer");
    dev.log("screen height = ${MediaQuery.of(context).size.height}",
        name: "VimeoPlayer");
    Widget child = AspectRatio(
      aspectRatio: widget.vimeoVideo.ratio,
      child: BetterPlayer(
        controller: widget.videoController,
      ),
    );

    if (orientation == Orientation.portrait) {
      SystemChrome.setEnabledSystemUIOverlays(
          [SystemUiOverlay.top, SystemUiOverlay.bottom]);
      return Container(
        width: MediaQuery.of(context).size.width,
        child: child,
      );
    } else {
      SystemChrome.setEnabledSystemUIOverlays([]);
      return Container(
        height: MediaQuery.of(context).size.height,
        child: child,
      );
    }
  }
}

class VimeoVideo {
  final bool liveEvent;
  final int width;
  final int height;
  final List<_VimeoQualityFile?> files;

  VimeoVideo({
    this.liveEvent = false,
    required this.width,
    required this.height,
    required this.files,
  });

  factory VimeoVideo.fromJson(Map<String, dynamic> json) {
    var progressive = (json['files']) as List<dynamic>;
    List<_VimeoQualityFile?> files = List<_VimeoQualityFile?>.from(
        progressive.map<_VimeoQualityFile?>((element) {
      if (element['quality'] != null &&
          element['quality'] != _VimeoQualityFile.hls) {
        return _VimeoQualityFile(
          quality: element['quality'],
          file: _VimeoSourceFile(
            height: element['height'],
            width: element['width'],
            fps: element['fps'] is double
                ? element['fps']
                : (element['fps'] as int).toDouble(),
            url: Uri.tryParse(element['link'] as String)!,
          ),
        );
      }
    })).toList();
    return VimeoVideo(
      liveEvent: json['embed']['badges']['live']['streaming'],
      width: json['width'],
      height: json['height'],
      files: files,
    );
  }

  bool get isLive => liveEvent;

  _VimeoSourceFile? get defaultVideo {
    _VimeoSourceFile? ret = files.first?.file;
    for (var file in files) {
      if (file?.file.size == size) {
        ret = file?.file;
        break;
      }
    }
    return ret;
  }

  Uri? get videoUrl {
    return defaultVideo?.url;
  }

  int get size {
    return width > height ? width : height;
  }

  Map<String, String> get resolutions {
    Map<String, String> ret = {};

    for (var q in files) {
      if (q == null) {
        continue;
      }
      ret.addAll({q.quality: q.file.url.toString()});
    }

    return ret;
  }

  static Future<VimeoVideo> parse(String id) async {
    return await _VimeoParser.getVimeoVideo(id);
  }

  double get ratio => width / height;
}

class _VimeoSourceFile {
  final int height;
  final int width;
  final double fps;
  final Uri url;

  _VimeoSourceFile({
    required this.height,
    required this.width,
    required this.fps,
    required this.url,
  });

  factory _VimeoSourceFile.fromJson(
      {required bool isLive, required dynamic json}) {
    return _VimeoSourceFile(
      height: json['height'],
      width: json['width'],
      fps: json['fps'],
      url: Uri.parse(json['url']),
    );
  }

  int get size => height > width ? height : width;
}

class _VimeoQualityFile {
  static const String qualityLive = "live";
  static const String quality4k = "4k";
  static const String quality8k = "8k";
  static const String hd = "hd";
  static const String sd = "sd";
  static const String hls = "hls";
  static const String quality1440p = "1440p";
  static const String quality1080p = "1080p";
  static const String quality720p = "720p";
  static const String quality540p = "540p";
  static const String quality360p = "360p";
  static const String quality280p = "280p";

  final String quality;
  final _VimeoSourceFile file;

  _VimeoQualityFile({
    required this.quality,
    required this.file,
  });
}

class _VimeoParser {
  static Future<VimeoVideo> getVimeoVideo(String id) async {
    Uri uri = Uri.parse("https://api.vimeo.com/videos/$id");
    var res = await http.get(uri,
        headers: {"Authorization": "Bearer 2c987e01f52ce513bbcec2164292b4d4"});
    var json = jsonDecode(res.body);
    if (json['embed']?['badges']['live']['streaming'] ?? false) {
      return await _getLiveStream(
          json,
          json['video']['live_event'],
          json['request']['files']['hls']['cdns']['fastly_live']['json_url']
              as String);
    }
    return VimeoVideo.fromJson(json);
  }

  static Future<VimeoVideo> _getLiveStream(
      dynamic json, bool liveEvent, String url) async {
    var res = await http.get(Uri.parse(url));
    String bodyString = "${res.body}";
    Map<String, dynamic> body = jsonDecode(bodyString);
    String urlString = body['url'];
    Uri uri = Uri.parse(urlString);
    var ret = VimeoVideo(
      liveEvent: liveEvent,
      width: json['video']['width'],
      height: json['video']['height'],
      files: [
        _VimeoQualityFile(
            file: _VimeoSourceFile(
              width: json['video']['width'],
              height: json['video']['height'],
              fps: json['video']['fps'] as double,
              url: uri,
            ),
            quality: _VimeoQualityFile.qualityLive)
      ],
    );
    return ret;
  }
}
