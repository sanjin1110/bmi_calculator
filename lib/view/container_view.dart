import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomRight,
        child: Container(
          width: 100,
          height: 100,

          // color: Colors.amberAccent,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,

            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(10),
            //     bottomRight: Radius.circular(10)),
            color: Colors.amberAccent,

            border: Border.all(color: Colors.black, width: 3),
          ),
          child: const Text("Hello World"),
        ),
      ),
    );
  }
}
