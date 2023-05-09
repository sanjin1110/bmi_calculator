import 'package:bmi_calculator/model/arithemetic.dart';
import 'package:flutter/material.dart';

class Summation extends StatefulWidget {
  const Summation({super.key});

  @override
  State<Summation> createState() => _SummationState();
}

class _SummationState extends State<Summation> {
  final firstController = TextEditingController(text: '3');
  final secondController = TextEditingController(text: '5');

  int result = 0;
  Arithemetic arithemetic = Arithemetic();
  void calculate(number1, number2) {
    setState(() {
      result = arithemetic.add(
          int.parse(firstController.text), int.parse(secondController.text));
    });
    Navigator.pushNamed(context, "/outputRoute", arguments: result);
  }

  final meroKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum"),
      ),
      body: Form(
        key: meroKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: firstController,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter first number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: secondController,
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
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'please enter second number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (meroKey.currentState!.validate()) {
                        calculate(firstController, secondController);
                      }
                    },
                    child: const Text('Add'),
                  ),
                ),
                Text('Add : $result'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }
}
