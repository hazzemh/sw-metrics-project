// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Classes/attributes.dart';

Widget TextFieldBuilder(int numOfSimple, int simple, int numOfAverage,int average, int numOfComplex, int complex) {
  numOfSimple = 0;
  numOfAverage = 0;
  numOfComplex = 0;
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(6.0),
        width: 115.0,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Simple ", border: InputBorder.none),
            onChanged: (value) {
              numOfSimple = int.parse(value);
              if (value == null) {
                numOfSimple = 0;
              }
            },
            onFieldSubmitted: (value) {
              int upf = (numOfSimple * simple);
              calculationsObject.UFP += upf;
            }),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Container(
        padding: const EdgeInsets.all(6.0),
        width: 115.0,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Average ", border: InputBorder.none),
            onChanged: (value) {
              numOfAverage = int.parse(value);
              if (value == null) {
                numOfAverage = 0;
              }
            },
            onFieldSubmitted: (value) {
              int upf = (numOfAverage * average);
              calculationsObject.UFP += upf;
            }),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Container(
        padding: const EdgeInsets.all(6.0),
        width: 115.0,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              labelText: "complex ", border: InputBorder.none),
          onChanged: (value) {
            numOfComplex = int.parse(value);
            if (value == null) {
              numOfComplex = 0;
            }
          },
          onFieldSubmitted: (value) {
            int upf = (numOfComplex * complex);
            calculationsObject.UFP += upf;
            print(calculationsObject.UFP);
          },
        ),
      ),
    ],
  );
}

TableRow table_builder(String A , String B) {
  return TableRow(
    decoration: BoxDecoration(color: Colors.grey[200]),
    children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(A),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(B),
        ),
      ),
    ],
  );
}
