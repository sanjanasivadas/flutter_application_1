import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: MyTable()
  ));
}
class MyTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
        decoration: BoxDecoration(border: Border.all(width: 2)),
        columns: const<DataColumn>[
          DataColumn(
            label: Text("Name", style: TextStyle(fontStyle: FontStyle.italic),),),
          DataColumn(
            label: Text("Age",style: TextStyle(fontStyle: FontStyle.italic),),),
          DataColumn(
            label: Text("Role",style: TextStyle(fontStyle: FontStyle.italic),),),
          DataColumn(
            label: Text("Salary",style: TextStyle(fontStyle: FontStyle.italic),),),
        ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Sarah")),
                DataCell(Text("19")),
                DataCell(Text("Student")),
                DataCell(Text("")),
          ],
        ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Jennie")),
                DataCell(Text("28")),
                DataCell(Text("Professor")),
                DataCell(Text("50000")),
          ],
        ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Joseph")),
                DataCell(Text("42")),
                DataCell(Text("Assisstant Professor")),
                DataCell(Text("20000")),
          ],
        ), 
    ],),));
  }

}