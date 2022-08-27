// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.purpleAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text(
                "Dev0 PK",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text("pkdev0@patientkeeper.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://thumbs.dreamstime.com/z/man-icon-profile-member-user-perconal-symbol-vector-white-isolated-background-141728154.jpg"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Add Patient"),
            subtitle: Text("New Patient"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.note_add),
            title: Text("Add Visit"),
            subtitle: Text("New Visit"),
            trailing: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
