// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import '../Classes/attributes.dart';

class TCFScreen extends StatefulWidget {
  const TCFScreen({Key? key}) : super(key: key);

  @override
  _TCFScreenState createState() => _TCFScreenState();
}

class _TCFScreenState extends State<TCFScreen> {
  double tcfValue = 0.0;
  double fpValue = 0.0;
  final List<String> attributeNames = [
    'Data Communication',
    'Distributed Data Process',
    'Performance',
    'Configuration',
    'Transaction Rate',
    'Online Data Entry',
    'Efficiency',
    'Online Update',
    'Complex Processing',
    'Reusability',
    'Installation Ease',
    'Operational Ease',
    'Multiple Sites',
    'Facilitate Change',
  ];

  final List<String> dropdownOptions = [
    'No Influence',
    'Incidental',
    'Moderate',
    'Average',
    'Significant',
    'Essential',
  ];

  final Map<String, String> selectedValues = {};
  bool visibile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        backgroundColor: Colors.deepOrange,
        title: const Text('TCF Calculation'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'If you want to enter the DI value, please enter it below:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter DI Value',
              ),
              keyboardType: TextInputType.number,
              onFieldSubmitted: (value) {
                calculationsObject.DI = int.parse(value);
                calculationsObject.TCF = 0.65 + 0.01 * calculationsObject.DI;
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  setState(() {
                    tcfValue = calculationsObject.TCF;
                  });
                },
                child: const Text('Calculate TCF'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "TCF Value: $tcfValue",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  setState(() {
                    fpValue = calculationsObject.FP;
                  });
                },
                child: const Text('Calculate FP'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "FP Value: $fpValue",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            const Text(
              "If you want DI to be calculated press here",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  setState(() {
                    visibile = !visibile;
                  });
                },
                child: const Text('Calculate DI'),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Visibility(
              visible: visibile,
              child: SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Text(
                      'Select the level of influence of each attribute:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...List.generate(attributeNames.length, (index) {
                      final attributeName = attributeNames[index];
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            attributeName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          DropdownButton<String>(
                            value: selectedValues.containsKey(attributeName)
                                ? selectedValues[attributeName]
                                : null,
                            onChanged: (value) {
                              setState(() {
                                selectedValues[attributeName] = value!;
                                saveAttribute(attributeName, value);
                                calculationsObject.DI = calculateDI();
                                calculationsObject.TCF =
                                    0.65 + 0.01 * calculationsObject.DI;
                              });
                            },
                            items: dropdownOptions
                                .map(
                                  (option) => DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      );
                    }),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 180.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal[400],
                              side: BorderSide.none,
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {
                              setState(() {
                                tcfValue = calculationsObject.TCF;
                              });
                            },
                            child: const Text('Calculate TCF'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "TCF Value: $tcfValue",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: 180.0,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[400],
                            side: BorderSide.none,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            setState(() {
                              fpValue = calculationsObject.FP;
                            });
                          },
                          child: const Text('Calculate FP'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "FP Value: $fpValue",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'loc');
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  int calculateDI() {
    int di = 0;
    di += DIObject.data_comm;
    di += DIObject.ditributed_data_process;
    di += DIObject.performance;
    di += DIObject.configuration;
    di += DIObject.transaction_rate;
    di += DIObject.online_data_entry;
    di += DIObject.efficiency;
    di += DIObject.online_update;
    di += DIObject.complex_processing;
    di += DIObject.reusability;
    di += DIObject.installation_ease;
    di += DIObject.operational_ease;
    di += DIObject.multiple_sites;
    di += DIObject.facilitate_change;
    return di;
  }

  void saveAttribute(String attributeName, String value) {
    setState(() {
      switch (attributeName) {
        case 'Data Communication':
          DIObject.data_comm = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Distributed Data Process':
          DIObject.ditributed_data_process = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Performance':
          DIObject.performance = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Configuration':
          DIObject.configuration = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Transaction Rate':
          DIObject.transaction_rate = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Online Data Entry':
          DIObject.online_data_entry = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Efficiency':
          DIObject.efficiency = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Online Update':
          DIObject.online_update = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Complex Processing':
          DIObject.complex_processing = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Reusability':
          DIObject.reusability = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Installation Ease':
          DIObject.installation_ease = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Operational Ease':
          DIObject.operational_ease = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Multiple Sites':
          DIObject.multiple_sites = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
        case 'Facilitate Change':
          DIObject.facilitate_change = dropdownOptions.indexOf(value);
          selectedValues[attributeName] = value;
          break;
      }
    });
  }
}
