import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'pos_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(960, 450);
    win.minSize = initialSize;
    // win.size = initialSize;
    win.alignment = Alignment.center;
    appWindow.maximizeOrRestore();
    // win.title = "Custom window with Flutter";
    win.show();
  });
  // if (Platform.isWindows) {
  runApp(const PosSystem());
  // }
}
