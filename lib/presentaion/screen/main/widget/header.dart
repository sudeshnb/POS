import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/controllers/menu_controller.dart';
import 'package:pos/core/res/responsive.dart';
import 'package:pos/presentaion/screen/main/widget/windows_btn.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: headerbarColor,
      color: sidebarColor,
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            InkWell(
              child: SvgPicture.asset(
                'assets/svg/menu.svg',
                color: iconsColor,
              ),
              onTap: context.read<MenuController>().controlMenu,
            ),
          Expanded(child: MoveWindow()),
          Text(
            DateFormat.yMMMMEEEEd().format(DateTime.now()),
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const WindowButtons()
        ],
      ),
    );
  }
}
