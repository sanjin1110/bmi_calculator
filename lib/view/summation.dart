import 'package:bmi_calculator/model/arithemetic.dart';
import 'package:flutter/material.dart';

class Summation extends StatefulWidget {
  const Summation({super.key});

  @override
  State<Summation> createState() => _SummationState();
}

class _SummationState extends State<Summation> {
  int number1 = 0;
  int number2 = 0;
  int result = 0;
  Arithemetic arithemetic = Arithemetic();
  void calculate(number1, number2) {
    setState(() {
      result = arithemetic.add(number1, number2);
    });
    Navigator.pushNamed(context, "/outputRoute", arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  number1 = int.parse(value);
                },
                decoration: const InputDecoration(
                  labelText: 'num1 ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  number2 = int.parse(value);
                },
                decoration: const InputDecoration(
                  hintText: 'num2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    calculate(number1, number2);
                  },
                  child: const Text('Add'),
                ),
              ),
              Text('Add : $result'),
            ],
          ),
        ),
      ),
    );
  }
}
