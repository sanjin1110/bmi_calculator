import 'package:bmi_calculator/view/binary_search_view.dart';
import 'package:bmi_calculator/view/bmi_view.dart';
import 'package:bmi_calculator/view/column_view.dart';
import 'package:bmi_calculator/view/container_view.dart';
import 'package:bmi_calculator/view/dashboard.dart';
import 'package:bmi_calculator/view/images_view.dart';
import 'package:bmi_calculator/view/media_query_view.dart';
import 'package:bmi_calculator/view/output_view.dart';
import 'package:bmi_calculator/view/summation.dart';
import 'package:bmi_calculator/view/reverse_view.dart';
import 'package:bmi_calculator/view/second_highest_view.dart';
import 'package:bmi_calculator/view/tiger_image_view.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/bmiRoute': (context) => const BmiView(),
        '/reverseRoute': (context) => const ReverseView(),
        '/highestRoute': (context) => const SecondHighestView(),
        '/binaryRoute':(context) => const BinarySearchView(),
        '/summationView':(context) => const Summation(),
        '/outputRoute':(context) => const OutputView(),
        '/containerRoute':(context) => const ContainerView(),
        '/columnRoute':(context) => const ColumnView(),
        '/imageRoute':(context) => const ImageView(),
        '/tigerRoute':(context) => const TigerImageView(),
        '/mediaRoute':(context) => const MediaQueryView(),
      },
    );
  }
}
