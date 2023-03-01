import 'package:flutter/material.dart';
// ignore: camel_case_types
class lecture_screen extends StatelessWidget {
  const lecture_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold( appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.blue,
            elevation: 10,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // do something when the icon is pressed
                },
              ),
            ],
            title: const Text(
              'MUST TIMETABLE',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Table(
        // Define table properties
        // ignore: prefer_const_literals_to_create_immutables
        columnWidths: {
          0: const FlexColumnWidth(1),
          1: const FlexColumnWidth(2),
          2: const FlexColumnWidth(1),
        },
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // Define table rows
          const TableRow(
            children: [
              Text('Column 1'),
              Text('Column 2'),
              Text('Column 3'),
            ],
          ),
          const TableRow(
            children: [
              Text('Row 1, Column 1'),
              Text('Row 1, Column 2'),
              Text('Row 1, Column 3'),
            ],
          ),
          const TableRow(
            children: [
              Text('Row 2, Column 1'),
              Text('Row 2, Column 2'),
              Text('Row 2, Column 3'),
            ],
          ),
        ]),
         ));
  }
}