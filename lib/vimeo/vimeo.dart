import 'package:remedi_vimeo_player/vimeo/auth/auth_api_service.dart';
import 'package:remedi_vimeo_player/vimeo/vimeo_video.dart';

class Vimeo {
  final String videoId;
  final String? accessKey;

  Vimeo(
    this.videoId, {
    this.accessKey,
  });
}

extension ExtensionVimeo on Vimeo {
  Future<dynamic> get auth async {
    try {
      var res = await AuthApiService()
          .getVimeoData(accessKey: accessKey!, id: videoId);
      return VimeoVideo.fromJsonAuth(res as Map<String, dynamic>);
    } catch (e) {
      throw Exception("");
    }
  }

  Future<dynamic> get noneAuth async {}
}
