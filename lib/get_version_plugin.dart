import 'package:flutter/services.dart';

class GetVersionPlugin {
  static const _channel = const MethodChannel("top.kikt/go/version");

  static Future<String> get version async =>
      _channel.invokeMethod("getVersion");
}
