import 'package:flutter/material.dart';
import 'package:pos/presentaion/screen/main/widget/side_menu.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final Size _size = MediaQuery.of(context).size;
    return const SizedBox(
      // this value is fixed ,
      width: 250,
      child: SideMenu(),
    );
  }
}
