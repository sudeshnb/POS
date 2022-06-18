import 'package:flutter/material.dart';

class SummaryInfo {
  final String? svgSrc, title, totalStorage, subtitle;
  final int? percentage;
  final Color? color;

  SummaryInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.subtitle,
    this.percentage,
    this.color,
  });
}
