// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sw_metrics_project/Classes/attributes.dart';
import 'package:sw_metrics_project/widgets/shared_widgts.dart';

class LocScreen extends StatefulWidget {
  LocScreen({super.key});

  @override
  State<LocScreen> createState() => _LocScreenState();
}

class _LocScreenState extends State<LocScreen> {
  String? selectedOption;
  final List<String> options = [
    'Assembly',
    'C Language',
    'COBOL',
    'Pascal',
    'Ada',
    'C++',
    'Visual Basic',
    'Object-Oriented Languages',
    'Smalltalk',
    'Code Generators',
    'SQL',
    'Spreadsheets',
    'Graphical Languages',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text("LOC Calculation"),
        backgroundColor: Colors.deepOrange,
        actions: [],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Programming Languages',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'LOC/FP (average)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                table_builder("Assembly Language", "320"),
                table_builder("C", "128"),
                table_builder("COBOL/Fotran", "105"),
                table_builder("Pascal", "90"),
                table_builder("Ada", "70"),
                table_builder("C++", "64"),
                table_builder("Visual Basic", "32"),
                table_builder("Object-Oriented Languages", "30"),
                table_builder("Smalltalk", "22"),
                table_builder("Code Generators (Power Builder)", "15"),
                table_builder("SQL/Oracle", "12"),
                table_builder("Spreadsheets", "6"),
                table_builder("Graphical Languages (icons)", "4"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Choose your Programming Language: ",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton(
              hint: Text('Select a programming language'),
              value: selectedOption,
              items: options
                  .map((option) => DropdownMenuItem<String>(
                      value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                  calculationsObject.AVC = locValues[value] ?? 0;
                });
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 180.0,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      calculationsObject.LOC =
                          calculationsObject.AVC * calculationsObject.FP;
                    });
                  },
                  child: Text(
                    "Calculate LOC",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[400],
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "LOC: ${calculationsObject.LOC}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
