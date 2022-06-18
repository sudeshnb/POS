import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/controllers/page_controller.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: sidebarColor,
      child: ListView(
        children: [
          DrawerHeader(
            // child: Image.asset("assets/images/logo.png"),
            child: Container(),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(0);
            },
          ),
          DrawerListTile(
            title: "Billing",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(1);
            },
          ),
          DrawerListTile(
            title: "Products",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(2);
            },
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(3);
            },
          ),
          DrawerListTile(
            title: "Purchase",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(4);
            },
          ),
          DrawerListTile(
            title: "Documents",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(5);
            },
          ),
          DrawerListTile(
            title: "Suppliers",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(6);
            },
          ),
          DrawerListTile(
            title: "Customers",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(7);
            },
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(8);
            },
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(9);
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(10);
            },
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/svg/dashboard.svg",
            press: () {
              context.read<PageMoveController>().controlPages(11);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: iconsColor,
      ),
      title: Text(
        title,
        style: const TextStyle(color: btnTextColor),
      ),
    );
  }
}
