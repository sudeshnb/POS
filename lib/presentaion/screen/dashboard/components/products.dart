import 'package:flutter/material.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/res/responsive.dart';
import 'package:pos/data/source/stock_arlet.dart';

class StockArletDataTable extends StatelessWidget {
  const StockArletDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: _size.height / 2.5),
      padding: const EdgeInsets.all(defaultPadding),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: sidebarColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Stock alert".toUpperCase(),
            style: TextStyle(
              color: textColor,
              fontSize: Responsive.textSize * 0.9,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding),
          const ProductsList()
        ],
      ),
    );
  }
}

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        primary: false,
        child: DataTable(
          headingRowColor: headingRowColor,
          headingRowHeight: 40,
          headingTextStyle: TextStyle(
            color: textColor,
            fontSize: Responsive.textSize * 0.9,
            fontWeight: FontWeight.bold,
          ),
          columns: [
            DataColumn(label: Text("No".toUpperCase())),
            DataColumn(
                label: Text(
              "Category Name".toUpperCase(),
              maxLines: 1,
            )),
            DataColumn(label: Text("item Name".toUpperCase())),
            DataColumn(
                label: Text("Status".toUpperCase()), onSort: (value, k) {}),
            DataColumn(label: Text("stock".toUpperCase())),
          ],
          rows: List.generate(stockArletList.length, (index) {
            return DataRow(
              color: index % 2 == 1
                  ? MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                      // if (states.contains(MaterialState.selected))
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08);
                      // Use the default value.
                    })
                  : null,
              cells: <DataCell>[
                DataCell(Text((index + 1).toString())),
                DataCell(Text(stockArletList[index].categoryName)),
                DataCell(Text(stockArletList[index].itemName)),
                DataCell(Text(stockArletList[index].state)),
                DataCell(Text(stockArletList[index].stock), showEditIcon: true),
              ],
            );
          }),
        ),
      ),
    );
  }
}
