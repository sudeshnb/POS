import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/color/colors.dart';

class WindowButtons extends StatefulWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  _WindowButtonsState createState() => _WindowButtonsState();
}

class _WindowButtonsState extends State<WindowButtons> {
  void maximizeOrRestore() {
    setState(() {
      appWindow.maximizeOrRestore();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        // appWindow.isMaximized
        //     ? RestoreWindowButton(
        //         colors: buttonColors,
        //         onPressed: maximizeOrRestore,
        //       )
        MaximizeWindowButton(
          colors: buttonColors,
          onPressed: maximizeOrRestore,
        ),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
