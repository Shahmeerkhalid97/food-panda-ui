import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: const [
        DrawerHeader(
            decoration: BoxDecoration(color: MyColors.primaryColor),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic.jpg'),
            )),
        ListTile(
          leading: Icon(Icons.settings_outlined),
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
              fontFamily: Medium,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.help_center_outlined),
          title: Text(
            'Help Center',
            style: TextStyle(
              color: Colors.black,
              fontFamily: Medium,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.more_horiz),
          title: Text(
            'More',
            style: TextStyle(
              color: Colors.black,
              fontFamily: Medium,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text(
            'Signout',
            style: TextStyle(
              color: Colors.black,
              fontFamily: Medium,
            ),
          ),
        )
      ],
    ));
  }
}
