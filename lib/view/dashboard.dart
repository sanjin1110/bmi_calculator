import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/bmiRoute");
            },
            child: const Text('BMI Calculator'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/reverseRoute");
            },
            child: const Text('Reverse String'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/highestRoute");
            },
            child: const Text('Second Highest'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/summationView");
            },
            child: const Text('Calculate sum'),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, "/outputViewRoute");
          //   },
          //   child: const Text('Output View'),
          // ),
        ],
      ),
    );
  }
}
