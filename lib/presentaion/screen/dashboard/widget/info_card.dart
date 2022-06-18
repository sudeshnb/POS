import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/res/responsive.dart';
import 'package:pos/data/model/info_model.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.info}) : super(key: key);

  final SummaryInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: infoCardBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              // padding: const EdgeInsets.all(defaultPadding),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: info.color!.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              // child: SvgPicture.asset(
              //   info.svgSrc!,
              //   color: info.color,
              // ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    info.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.textSize,
                      color: textColor,
                      fontWeight: FontWeight.w800,
                      // fontSize: 20,
                    ),
                  ),
                ],
              ),
              Text(
                "LKR ${info.totalStorage} ",
                style: TextStyle(
                  fontSize: Responsive.textSize * 1.3,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                info.subtitle!,
                style: TextStyle(
                  fontSize: Responsive.textSize * 0.8,
                  color: textColor.withOpacity(0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ProgressLine(
                      color: info.color,
                      percentage: info.percentage,
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    '${info.percentage}%',
                    style: TextStyle(
                      // fontSize: 1 * SizeConfig.textMultiplier!,
                      fontSize: Responsive.textSize,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 8,
          decoration: const BoxDecoration(
            color: progressLineBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 8,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: color!,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
