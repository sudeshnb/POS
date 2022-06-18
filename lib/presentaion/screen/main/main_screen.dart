import 'package:flutter/material.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/controllers/menu_controller.dart';
import 'package:pos/core/res/responsive.dart';
import 'package:provider/provider.dart';
import 'components/left_side.dart';
import 'components/right_side.dart';

class PosMainScreen extends StatelessWidget {
  const PosMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: context.read<MenuController>().scaffoldKey,
      drawer: const LeftSide(),
      body: Row(
        children: [
          // We want this side menu only for large screen
          if (Responsive.isDesktop(context)) const LeftSide(),
          // This is body content of screen
          const RightSide(),
        ],
      ),
    );
  }
}
