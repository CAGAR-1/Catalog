import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  AuthenticationController authenticationController =
      AuthenticationController();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountEmail: Text("Sagar@gmail.com"),
                  accountName: Text("Sagar Aryal"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.scienceabc.com/wp-content/uploads/2019/01/snow-fall.jpg'),
                  ))),
          ElevatedButton(
              onPressed: () {
                authenticationController.signOut();
              },
              child: Text("Sign Out"))
        ],
      ),
    );
  }
}
