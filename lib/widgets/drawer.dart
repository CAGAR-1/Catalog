import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

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
                  )))
        ],
      ),
    );
  }
}
