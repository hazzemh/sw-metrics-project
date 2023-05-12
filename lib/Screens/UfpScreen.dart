// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import '../Classes/attributes.dart';
import '../widgets/shared_widgts.dart';

// ignore: non_constant_identifier_names

class UfpScreen extends StatefulWidget {
  const UfpScreen({super.key});

  @override
  State<UfpScreen> createState() => _UfpScreenState();
}

class _UfpScreenState extends State<UfpScreen> {
  int ufpValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UFP Calculation"),
        backgroundColor: Colors.deepOrange,
        actions: [],
      ),
      body: ListView(padding: EdgeInsets.all(8.0), children: [
        Column(
          children: [
            Text(
              "External Input",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            TextFieldBuilder(
                UFPObject.numof_externalInputSimple,
                UFP.externalInputSimple,
                UFPObject.numof_externalInputAverage,
                UFP.externalInputAverage,
                UFPObject.numof_externalInputComplex,
                UFP.externalInputComplex),
            SizedBox(
              height: 7.0,
            ),
            Text(
              "External Output",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            TextFieldBuilder(
                UFPObject.numof_externalOutputSimple,
                UFP.externalOutputSimple,
                UFPObject.numof_externalOutputAverage,
                UFP.externalOutputAverage,
                UFPObject.numof_externalOutputComplex,
                UFP.externalOutputComplex),
            SizedBox(
              height: 7.0,
            ),
            Text(
              "External Inquiry",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            TextFieldBuilder(
                UFPObject.numof_externalInquirySimple,
                UFP.externalInquirySimple,
                UFPObject.numof_externalInquiryAverage,
                UFP.externalInquiryAverage,
                UFPObject.numof_externalInquiryComplex,
                UFP.externalInquiryComplex),
            SizedBox(
              height: 7.0,
            ),
            Text(
              "Internal Logical Files",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            TextFieldBuilder(
                UFPObject.numof_internalLogicalFilesSimple,
                UFP.internalLogicalFilesSimple,
                UFPObject.numof_internalLogicalFilesAverage,
                UFP.internalLogicalFilesAverage,
                UFPObject.numof_internalLogicalFilesComplex,
                UFP.internalLogicalFilesComplex),
            SizedBox(
              height: 7.0,
            ),
            Text(
              "External Interface Files",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            TextFieldBuilder(
                UFPObject.numof_externalInterfaceFilesSimple,
                UFP.externalInterfaceFilesSimple,
                UFPObject.numof_externalInterfaceFilesAverage,
                UFP.externalInterfaceFilesAverage,
                UFPObject.numof_externalInterfaceFilesComplex,
                UFP.externalInterfaceFilesComplex),
            SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 180.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    ufpValue = calculationsObject.UFP;
                  });
                },
                child: Text(
                  "Calculate UFP",
                  style: TextStyle(
                    fontSize: 18.0,
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
              "UFP Value: $ufpValue",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            SizedBox(
                width: 240.0,
                height: 50.0,
                child: Positioned(
                  bottom: 20.0,
                  right: 20.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'tcf');
                    },
                    child: Text("click to calculate TCF ",style: TextStyle(fontSize: 18.0,),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[400],
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
