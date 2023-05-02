import 'package:bmi_calculator/model/bmi_model.dart';
import 'package:flutter/material.dart';

class BmiView extends StatefulWidget {
  const BmiView({super.key});

  @override
  State<BmiView> createState() => _BmiViewState();
}

class _BmiViewState extends State<BmiView> {
  var gap = const SizedBox(height: 20);
  double result = 0;
  double weight = 0;
  double height = 0;
  BmiModel bmiModel = BmiModel();
  void calculateBMI() {
    setState(() {
      result = bmiModel.calculateBMI(height,weight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                height = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: ("Enter height"),
              ),
            ),
            TextField(
              onChanged: (value) {
                weight = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: ("Enter Weight"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: const Text('Calculate'),
            ),
            gap,
            Text("Your BMI is $result"),
          ],
        ),
      ),
    );
  }
}
