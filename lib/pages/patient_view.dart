// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:patientkeeper/constants.dart';
import 'package:patientkeeper/pages/login_page.dart';

class PatientView extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final index;
  const PatientView(this.index, {Key? key}) : super(key: key);

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.index["lastName"].toString() +
              ", " +
              widget.index["firstName"].toString()),
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
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.accessibility,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Visit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.note,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Clinical Notes",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.medication,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Medication",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Home Meds",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.inbox,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Inbox",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade800
                        ]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 2),
                        ]),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(
                            "Patient Details",
                            style: TextStyle(
                              color: Colors.purple.shade800,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ListTile(
                            leading: Image.network("${widget.index["image"]}"),
                            title: Text(
                                widget.index["firstName"].toString() +
                                    " " +
                                    widget.index["lastName"].toString(),
                                style: TextStyle(
                                    color: Colors.purple.shade600,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                widget.index["age"].toString() +
                                    "Y " +
                                    widget.index["gender"].toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Email: ${widget.index["email"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Phone: ${widget.index["phone"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Birth Date: ${widget.index["birthDate"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Blood Group: ${widget.index["bloodGroup"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Height: ${widget.index["height"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Weight: ${widget.index["weight"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Address: ${widget.index["address"]["address"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "City: ${widget.index["address"]["city"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "Postal Code: ${widget.index["address"]["postalCode"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  "State: ${widget.index["address"]["state"].toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
