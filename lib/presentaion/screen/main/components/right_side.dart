import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/controllers/page_controller.dart';
import 'package:pos/presentaion/screen/main/widget/header.dart';
import 'package:provider/provider.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.height - 50,
            child: SvgPicture.asset(
              'assets/svg/decoration.svg',
              alignment: Alignment.center,
              // color: borderColor,
            ),
          ),
          Column(children: [
            const Header(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: context.watch<PageMoveController>().controllerKey,
                  itemCount: pageChild.length,
                  itemBuilder: (context, index) => pageChild[index],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
