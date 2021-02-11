import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'ActivityScreen.dart';
import 'package:app_settings/app_settings.dart';

//TODO push and pop items at the same time
class DrawerUI extends StatelessWidget {
  const DrawerUI({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'Daily Plan',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w800,color: Colors.deepPurple),
            ),
            decoration: BoxDecoration(color: Colors.white,image: DecorationImage(
                image: AssetImage('images/bg-1.png'),
                fit: BoxFit.fill),),
          ),
          DrawerListMenu(
            itemIcon: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
            ),
            itemName: 'Account',
            onpress: () {Navigator.pushNamed(context, AccountScreen.id);},
          ),
          DrawerListMenu(
            itemIcon: Icon(
              Icons.assignment,
              color: Colors.black,
            ),
            itemName: 'My Task',
            onpress: () {Navigator.pushNamed(context, ActivityScreen.id);
            },
          ),
          DrawerListMenu(
            itemIcon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            itemName: 'Notifications',
            onpress: () {AppSettings.openNotificationSettings();},
          ),
          DrawerListMenu(
            itemIcon: Icon(
              Icons.star,
              color: Colors.black,
            ),
            itemName: 'My Favorites',
            onpress: () {},
          ),
          DrawerListMenu(
            itemIcon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            itemName: 'Settings',
            onpress: () {AppSettings.openAppSettings();},
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class DrawerListMenu extends StatelessWidget {
  final String itemName;
  final Icon itemIcon;
  final Function onpress;
  DrawerListMenu({@required this.onpress, this.itemIcon, this.itemName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: itemIcon,
        title: Text(
          itemName,
          style: TextStyle(fontSize: 20,),
        ),
        onTap: onpress);
  }
}
