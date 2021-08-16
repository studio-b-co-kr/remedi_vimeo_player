import 'dart:async';

import 'package:flutter/services.dart';

export 'vimeo/vimeo_player.dart';

class RemediVimeoPlayer {
  static const MethodChannel _channel =
      const MethodChannel('remedi_vimeo_player');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
