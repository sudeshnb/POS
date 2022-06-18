import 'package:flutter/material.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/data/source/info.dart';

import '../widget/info_card.dart';

class ShowInfoCardGridView extends StatelessWidget {
  const ShowInfoCardGridView({
    Key? key,
    this.crossAxisCount = 5,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoInfo.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => InfoCard(info: demoInfo[index]),
    );
  }
}
