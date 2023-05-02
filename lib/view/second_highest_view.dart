import 'package:bmi_calculator/model/bmi_model.dart';
import 'package:flutter/material.dart';

class SecondHighestView extends StatefulWidget {
  const SecondHighestView({super.key});

  @override
  State<SecondHighestView> createState() => _SecondHighestViewState();
}

class _SecondHighestViewState extends State<SecondHighestView> {
  var gap = const SizedBox(
    height: 12,
  );
  int num = 0;
  int calculate = 0;
  List<int> list = [];

  BmiModel sh = BmiModel();

  void addNumbers() {
    setState(() {
      list.add(num);
    });
  }

  // ignore: non_constant_identifier_names
  void CalculateSecondHeighest() {
    setState(() {
      calculate = sh.calculateSecondHeighest(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Heightest Value in List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          gap,
          TextField(
            onChanged: (value) {
              num = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: ("Enter any numbers to add in List"),
            ),
          ),
          gap,
          ElevatedButton(
            onPressed: () {
              addNumbers();
            },
            child: const Text("Add"),
          ),
          gap,
          ElevatedButton(
            onPressed: () {
              CalculateSecondHeighest();
            },
            child: const Text("Calulate Second heightest"),
          ),
          gap,
          Text("List = $list"),
          gap,
          Text("Calculate: $calculate"),
        ],
      ),
    );
  }
}
