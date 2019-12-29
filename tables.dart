import 'package:flutter/material.dart';

class Tables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
        columnWidths: {1: FractionColumnWidth(.2)},
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        children: [
          TableRow(children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.red,
              height: 120,
              width: 120,
            ),
            Container(
              color: Colors.green,
              height: 190,
              width: 160,
            )
          ]),
          TableRow(children: [
            Container(
              color: Colors.green,
              height: 60,
              width: 0,
            ),
            Container(
              color: Colors.red,
              height: 120,
              width: 120,
            ),
            Container(
              color: Colors.green,
              height: 190,
              width: 160,
            )
          ])
        ]);
  }
}
