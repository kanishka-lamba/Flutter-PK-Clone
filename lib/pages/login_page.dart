// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:patientkeeper/constants.dart';
import 'package:patientkeeper/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Image.network(
                      "https://mma.prnewswire.com/media/1311978/PatientKeeper_Logo.jpg?p=facebook"),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        controller: userNameController,
                        decoration: InputDecoration(labelText: "Username:"),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Password:"),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (userNameController.text == "pkdev0" &&
                          passwordController.text == "123") {
                        Constants.prefs?.setBool("loggedIn", true);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Enter valid credentials"),
                              );
                            });
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
