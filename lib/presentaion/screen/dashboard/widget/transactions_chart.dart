import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/res/responsive.dart';

import 'indicator.dart';

class TransactionsChart extends StatefulWidget {
  const TransactionsChart({Key? key}) : super(key: key);

  @override
  State<TransactionsChart> createState() => _TransactionsChartState();
}

class _TransactionsChartState extends State<TransactionsChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      // width: 200,
      // height: 200,
      constraints: BoxConstraints(maxHeight: _size.height / 2.5),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: sidebarColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Text(
            'Total Transactions',
            style: TextStyle(
                fontSize: Responsive.textSize * 1.2,
                fontWeight: FontWeight.w800,
                color: textColor),
          ),
          Text(
            'LKR 5223.00',
            style: TextStyle(
                fontSize: Responsive.textSize * 0.9,
                fontWeight: FontWeight.w300,
                color: textColor),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: 200,
            height: 200,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                  setState(() {
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                }),
                sectionsSpace: 0,
                centerSpaceRadius: 60,
                borderData: FlBorderData(show: false),
                startDegreeOffset: -90,
                sections: showingSections(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Indicator(
            color: Color(0xff12A60A),
            textValue: '40',
            text: 'Sales',
            isSquare: false,
          ),
          const SizedBox(height: defaultPadding / 2),
          const Indicator(
            color: Color(0xffADD6FF),
            textValue: '35',
            text: 'Purchase',
            isSquare: false,
          ),
          const SizedBox(height: defaultPadding / 2),
          const Indicator(
            color: Color(0xFFEE2727),
            textValue: '25',
            text: 'Expense',
            isSquare: false,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize =
          isTouched ? Responsive.textSize * 1.2 : Responsive.textSize * 0.9;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff12A60A),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffADD6FF),
            value: 35,
            title: '35%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xFFEE2727),
            value: 25,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}
