// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, file_names, prefer_const_constructors

import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "homepage",
          style: Constants.regularHeading,
        ),
      )
    );
  }
}