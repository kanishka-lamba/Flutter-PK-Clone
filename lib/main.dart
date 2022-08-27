// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:patientkeeper/constants.dart';
import 'package:patientkeeper/pages/homepage.dart';
import 'package:patientkeeper/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Patient Keeper",
    home:
        Constants.prefs?.getBool("loggedIn") == true ? HomePage() : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}
