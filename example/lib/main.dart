import 'package:flutter/material.dart';
import 'package:remedi_vimeo_player/remedi_vimeo_player.dart';

void main() {
  runApp(VimeoExample());
}

class VimeoExample extends StatefulWidget {
  @override
  _VimeoExampleState createState() => _VimeoExampleState();
}

class _VimeoExampleState extends State<VimeoExample> {
  VimeoVideo? vimeoVideo;
  BetterPlayerController? controller;

  initVimeo() async {
    var res = await Vimeo(
      "your video id",
      accessKey: "your vimeo accessKey",
    ).auth;

    if (res is VimeoVideo) {
      vimeoVideo = res;
      controller = BetterPlayerController(
        BetterPlayerConfiguration(),
        betterPlayerDataSource: BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          vimeoVideo!.videoUrl.toString(),
        ),
      );
    }

    return vimeoVideo;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose(forceDispose: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Vimeo Player Example'),
          ),
          body: FutureBuilder<dynamic>(
            future: initVimeo(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }
              return VimeoPlayer(
                vimeoVideo: vimeoVideo!,
                videoController: controller!,
              );
            },
          )),
    );
  }
}
