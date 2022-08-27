// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:patientkeeper/constants.dart';
import 'package:patientkeeper/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:patientkeeper/pages/login_page.dart';
import 'package:patientkeeper/pages/patient_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "http://dummyjson.com/users";
  // ignore: avoid_init_to_null
  var data = null;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Keeper"),
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs?.setBool("loggedIn", false);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PatientView(data["users"][index])));
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border(bottom: BorderSide())),
                        child: ListTile(
                          title: Text(data["users"][index]["lastName"] +
                              " , " +
                              data["users"][index]["firstName"]),
                          subtitle: Text(data["users"][index]["id"].toString() +
                              " " +
                              data["users"][index]["height"].toString() +
                              " " +
                              data["users"][index]["bloodGroup"]),
                          trailing: Text(
                              data["users"][index]["age"].toString() +
                                  "Y" +
                                  data["users"][index]["gender"]),
                        ),
                      ),
                    );
                  },
                  itemCount: 30,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
