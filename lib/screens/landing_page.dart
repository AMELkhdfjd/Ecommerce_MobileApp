// ignore_for_file: unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class Landingpage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (contex, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
                body: Container(
                    child: Center(
              child: Text("error ${snapshot.error}"),
            )));
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                body: Container(
                    child: Center(
                        child: Text(
              "Firebase App initialisation",
              style: Constants.regularHeading,
            ))));
          } else {
            return Scaffold(
                body: Container(
                    child: Center(
              child: Text("loading the firebase"),
            )));
          }
        });
  }
}
