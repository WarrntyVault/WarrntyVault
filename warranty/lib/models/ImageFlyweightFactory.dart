import 'package:flutter/material.dart';


// Flyweight pattern
// we used this pattern to reduce the load on RAM , So we use it in the images and to reduce the images objects

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



