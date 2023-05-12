// ignore_for_file: camel_case_types, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

UFP UFPObject = UFP();
Calculations calculationsObject = Calculations();
DI DIObject = DI();

class Calculations {
  late int UFP = 0;
  late int AVC = 0;
  late int DI = 0;
  late double TCF = 0.65 + 0.01 * DI;
  late double FP = UFP * TCF;
  late double LOC = 0.0;
  Calculations();
}

class UFP {
  static const int externalInputSimple = 3;
  static const int externalInputAverage = 4;
  static const int externalInputComplex = 6;
  static const int externalOutputSimple = 4;
  static const int externalOutputAverage = 5;
  static const int externalOutputComplex = 7;
  static const int externalInquirySimple = 3;
  static const int externalInquiryAverage = 4;
  static const int externalInquiryComplex = 6;
  static const int internalLogicalFilesSimple = 7;
  static const int internalLogicalFilesAverage = 10;
  static const int internalLogicalFilesComplex = 15;
  static const int externalInterfaceFilesSimple = 5;
  static const int externalInterfaceFilesAverage = 7;
  static const int externalInterfaceFilesComplex = 10;
  late int numof_externalInputSimple = 0;
  late int numof_externalInputAverage = 0;
  late int numof_externalInputComplex = 0;
  late int numof_externalOutputSimple = 0;
  late int numof_externalOutputAverage = 0;
  late int numof_externalOutputComplex = 0;
  late int numof_externalInquirySimple = 0;
  late int numof_externalInquiryAverage = 0;
  late int numof_externalInquiryComplex = 0;
  late int numof_internalLogicalFilesSimple = 0;
  late int numof_internalLogicalFilesAverage = 0;
  late int numof_internalLogicalFilesComplex = 0;
  late int numof_externalInterfaceFilesSimple = 0;
  late int numof_externalInterfaceFilesAverage = 0;
  late int numof_externalInterfaceFilesComplex = 0;

  UFP();
}

class TCF {
  static const int noInfluence = 0;
  static const int incidental = 1;
  static const int moderate = 2;
  static const int average = 3;
  static const int significant = 4;
  static const int essential = 5;
}

const Map<String, int> locValues = {
  'Assembly': 320,
  'C Language': 128,
  'COBOL': 105,
  'Pascal': 90,
  'Ada': 70,
  'C++': 64,
  'Visual Basic': 32,
  'Object-Oriented Languages': 30,
  'Smalltalk': 22,
  'Code Generators': 15,
  'SQL': 12,
  'Spreadsheets': 6,
  'Graphical Languages': 4,
};

class AVC {
  static const int assembly = 320;
  static const int C_language = 128;
  static const int COBOL = 105;
  static const int pascal = 90;
  static const int Ada = 70;
  static const int cpp = 64;
  static const int vbasic = 32;
  static const int obj_oriented_langs = 30;
  static const int smalltalk = 22;
  static const int code_generators = 15;
  static const int sql = 12;
  static const int spreadsheets = 6;
  static const int graphical_langs = 4;
}

class DI {
  late int data_comm;
  late int ditributed_data_process;
  late int performance;
  late int configuration;
  late int transaction_rate;
  late int online_data_entry;
  late int efficiency;
  late int online_update;
  late int complex_processing;
  late int reusability;
  late int installation_ease;
  late int operational_ease;
  late int multiple_sites;
  late int facilitate_change;
}
