import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 10; i++) ...{
              if ((i % 2 == 0) || (i == 5)) ...{
                Container(
                  width: 100,
                  height: 100,

                  // color: Colors.amberAccent,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(10),
                    //     bottomRight: Radius.circular(10)),
                    color: Colors.amberAccent,
                  ),
                  // child: Image.asset('assets/images/images.jpg'),
                  child: Text("$i"),
                ),
              }
              // Icon(
              //   Icons.star,
              //   color: Colors.red,
              //   size: 100,
              // ),
              // // Spacer(),
              // Icon(
              //   Icons.star,
              //   color: Colors.blue,
              //   size: 100,
              // ),
              // Spacer(),
              // Icon(
              //   Icons.star,
              //   color: Colors.green,
              //   size: 100,
              // ),
            }
          ],
        ),
      ),
    );
  }
}
