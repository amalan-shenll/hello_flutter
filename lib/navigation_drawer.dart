import 'package:flutter/material.dart';

class NavigtionDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Flutter App"),
            decoration: BoxDecoration(
              color: Colors.redAccent
            ),
          ),
          ListTile(
            leading: new Icon(Icons.home),
            title: Text("Home"),
            onTap: (){},
          ),
          ListTile(
            leading: new Icon(Icons.location_on),
            title: Text("Discover"),
            onTap: (){},
          ),
          ListTile(
            leading: new Icon(Icons.star),
            title: Text("Favorios"),
            onTap: (){},
          ),
          ListTile(
            leading: new Icon(Icons.person),
            title: Text("Profile"),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}