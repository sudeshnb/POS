import 'package:flutter/material.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/res/responsive.dart';
import 'package:pos/presentaion/screen/dashboard/widget/transactions_chart.dart';
import 'components/products.dart';
import 'components/show_info.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      primary: false,
      // padding: const EdgeInsets.all(defaultPadding).copyWith(top: 0),
      child: Column(
        children: [
          Responsive(
            tablet: const ShowInfoCardGridView(),
            desktop: ShowInfoCardGridView(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.8,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TransactionsChart(),
              SizedBox(width: defaultPadding),
              Expanded(child: StockArletDataTable())
            ],
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
