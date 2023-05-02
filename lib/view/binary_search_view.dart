import 'package:flutter/material.dart';

class BinarySearchView extends StatefulWidget {
  const BinarySearchView({super.key});

  @override
  State<BinarySearchView> createState() => _BinarySearchViewState();
}

class _BinarySearchViewState extends State<BinarySearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binary Search"),
      ),
      body: Column(),
    );
  }
}
