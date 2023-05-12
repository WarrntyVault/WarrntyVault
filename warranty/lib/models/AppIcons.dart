import 'package:flutter/material.dart';



//Singleton Pattern

class AppIcons {
  static final AppIcons _instance = AppIcons._internal();

  factory AppIcons() {
    return _instance;
  }

  AppIcons._internal();

  /* we use those instances to call it in all over the app. and only one instance
  is used for each icon
  */
  static const IconData home = Icons.home;
  static const IconData settings = Icons.settings;
  static const IconData add = Icons.add;
  static const IconData edit = Icons.edit;
  static const IconData delete = Icons.delete;
  static const IconData document_scanner_rounded = Icons.document_scanner_rounded;
  static const IconData arrow_drop_up = Icons.arrow_drop_up;
  static const IconData arrow_drop_down = Icons.arrow_drop_down;
  static const IconData library_books = Icons.library_books;
  static const IconData document_scanner = Icons.document_scanner;
  static const IconData person_rounded = Icons.person_rounded;
  static const IconData date_range = Icons.date_range;
  static const IconData notifications = Icons.notifications;
  static const IconData arrow_forward = Icons.arrow_forward;
  static const IconData home_filled = Icons.home_filled;
  static const IconData person = Icons.person;
  static const IconData more_horiz = Icons.more_horiz;



}