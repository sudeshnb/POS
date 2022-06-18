import 'package:flutter/material.dart';
import 'package:pos/core/controllers/menu_controller.dart';
import 'package:pos/core/controllers/page_controller.dart';
import 'package:pos/presentaion/screen/main/main_screen.dart';
import 'package:provider/provider.dart';

class PosSystem extends StatelessWidget {
  const PosSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS Admin Panel',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController()),
          ChangeNotifierProvider(create: (_) => PageMoveController()),
        ],
        child: const PosMainScreen(),
      ),
    );
  }
}
