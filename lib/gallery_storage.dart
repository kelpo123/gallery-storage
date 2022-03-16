import 'dart:async';

import 'package:flutter/services.dart';

class GalleryStorage {
  static const MethodChannel _channel = MethodChannel('gallery_storage');
  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get imagesPath async {
    final String? data = await _channel.invokeMethod('getImagesPath');
    return data;
  }

  static Future<String?> get videoPath async {
    final String? data = await _channel.invokeMethod('getVideosPath');
    return data;
  }

  static Future<String?> get audioPath async {
    final String? data = await _channel.invokeMethod('getAudioPath');
    return data;
  }

  static Future<String?> get filePath async {
    final String? data = await _channel.invokeMethod('getFilesPath');
    return data;
  }
}
