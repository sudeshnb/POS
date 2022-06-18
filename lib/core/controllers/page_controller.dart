import 'package:flutter/material.dart';

class PageMoveController extends ChangeNotifier {
  final PageController _controllerKey = PageController();

  PageController get controllerKey => _controllerKey;

  void controlPages(int page) {
    controllerKey.jumpToPage(page);
    notifyListeners();
  }
}
