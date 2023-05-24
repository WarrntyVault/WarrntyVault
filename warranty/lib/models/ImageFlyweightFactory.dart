import 'package:flutter/material.dart';

class ImageFlyweightFactory{
  Map<String, Image> _imageCache = {};

  Image? getImage(String path) {
    if (_imageCache.containsKey(path)) {
      return _imageCache[path];
    } else {
      final image = Image.asset(path);
      _imageCache[path] = image;
      return image;
    }
  }
}