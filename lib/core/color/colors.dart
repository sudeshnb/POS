import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

// const backgroundStartColor = Color(0xFFFFD500);
const backgroundColor = Color(0xFFF5F5F9);
const primaryColor = Color(0xFF366CF6);

const sidebarColor = Color(0xFFFFFFFF);
const headerbarColor = Color(0xFFF5F5F9);
const iconsColor = Color(0xFF30384D);

const btnTextColor = Color(0xFF4D5875);
const infoCardBackgroundColor = Color(0xFFFFFFFF);
const textColor = Color(0xFF4D5875);

const progressLineBackgroundColor = Color(0xFFECEEF1);

var headingRowColor =
    MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) return backgroundColor;
  return backgroundColor; // Use the default value.
});

final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF30384D),
    mouseOver: const Color(0xFF366CF6),
    mouseDown: const Color(0xFF30384D),
    iconMouseOver: const Color(0xFFF5F5F9),
    iconMouseDown: const Color(0xFFF5F5F9));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);

// const primaryColor = Color(0xFF366CF6);
// const secondaryColor = Color(0xFFFFFFFF);
// const bgColor = Color(0xFFF5F5F9);

// const kBgLightColor = Color(0xFFF2F4FC);
// const kBgDarkColor = Color(0xFFEBEDFA);
// const kBadgeColor = Color(0xFFEE376E);
// const kGrayColor = Color(0xFF8793B2);
// const kTitleTextColor = Color(0xFF30384D);
// const kTextColor = Color(0xFF4D5875);

// const kCancelBtnColor = Color(0xFFEE376E);
// const kClearBtnColor = Color.fromARGB(255, 231, 199, 19);
// const kBillBtnColor = Color.fromARGB(255, 10, 211, 134);
