import 'package:flutter/material.dart';
import '../model/info_model.dart';

List demoInfo = [
  SummaryInfo(
    title: "Sales",
    subtitle: 'Sales Target',
    svgSrc: "assets/svg/Documents.svg",
    totalStorage: "500.00",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  SummaryInfo(
    title: "Expense",
    subtitle: 'Expense Target',
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "36 500.00",
    color: const Color(0xFFD32F2F),
    percentage: 35,
  ),
  SummaryInfo(
    title: "Sales Due",
    subtitle: 'Sales Due Target',
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "825 500.00",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  SummaryInfo(
    title: "Purchase Due",
    subtitle: 'Purchase Due Target',
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "1 500.00",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
  SummaryInfo(
    title: "Transactions",
    subtitle: 'Sales Target',
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "864 500.00",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
