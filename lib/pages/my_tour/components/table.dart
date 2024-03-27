import 'package:flutter/material.dart';

class PriceTable extends StatefulWidget {
  const PriceTable({super.key});

  @override
  State<PriceTable> createState() => _PriceTableState();
}

class _PriceTableState extends State<PriceTable> {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = const TableRow(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("cell1"),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("cell2"),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("cell3"),
      )
    ]);
    return Center(
      child: Table(
        border: TableBorder.all(),
        defaultColumnWidth: const FixedColumnWidth(100),
        children: [tableRow, tableRow, tableRow, tableRow, tableRow],
      ),
    );
  }
}
