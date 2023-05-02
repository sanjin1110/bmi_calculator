import 'package:bmi_calculator/model/bmi_model.dart';
import 'package:flutter/material.dart';

class ReverseView extends StatefulWidget {
  const ReverseView({super.key});

  @override
  State<ReverseView> createState() => _ReverseViewState();
}

class _ReverseViewState extends State<ReverseView> {
  var gap = const SizedBox(height: 20);
  String word = "";
  BmiModel bmiModel = BmiModel();
  void reverseString() {
    setState(() {
      word = bmiModel.reverseString(word);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse String'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              word = (value);
            },
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: ("Enter word"),
            ),
          ),
          gap,
          ElevatedButton(
            onPressed: () {
              reverseString();
            },
            child: const Text('Reverse'),
          ),
          gap,
          Text('REVERSED WORD : $word'),
        ],
      ),
    );
  }
}
