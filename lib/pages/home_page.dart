import 'package:flutter/material.dart';
import 'package:nandighos/fragments/about_app_fragment.dart';
import 'package:nandighos/fragments/about_us_fragment.dart';
import 'package:nandighos/fragments/contact_fragment.dart';
import 'package:nandighos/fragments/food_fragment.dart';
import 'package:nandighos/fragments/gallery_fragment.dart';
import 'package:nandighos/fragments/home_fragment.dart';
import 'package:nandighos/fragments/services_fragment.dart';
import 'package:nandighos/pojo/drawer_item.dart';
class HomePage extends StatefulWidget{
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String _title = "Home";
  int _selectedDrawerIndex = 0;
  var _drawerItems = [
    DrawerItems(Icon(Icons.home), "Home"),
    DrawerItems(Icon(Icons.room_service), "Services"),
    DrawerItems(Icon(Icons.photo_library), "Gallery"),
    DrawerItems(Icon(Icons.restaurant_menu), "Food"),
    DrawerItems(Icon(Icons.info_outline), "About us"),
    DrawerItems(Icon(Icons.contacts), "Contact us"),
    DrawerItems(Icon(Icons.phone_android), "About app"),
  ];

  _getSelectedDrawerItem(int pos) {
    switch (pos) {
      case 0:
        return HomeFragment();
      case 1:
        return ServicesFragment();
      case 2:
        return GalleryFragment();
      case 3:
        return FoodFragment();
      case 4:
        return AboutUsFragment();
      case 5:
        return ContactUsFragment();
      case 6:
        return AboutAppFragment();
      default:
        return HomeFragment();
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];

    for (var i = 0; i < _drawerItems.length; i++) {
      var d = _drawerItems[i];
      drawerOptions.add(
          ListTile(
              leading: d.icon,
              title: Text(d.text),
              selected: i == _selectedDrawerIndex,
              onTap: () {
                _onSelectItem(i);
                _title = d.text;
              }
          )
      );
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(_title),
        ),
        drawer: Drawer(
          child: Column(
            children:[
              UserAccountsDrawerHeader(
                accountName: Text("Nandighosh Foods and services"),
                accountEmail: Text("Nandighoshfoodsservices.com"),
                currentAccountPicture: FlutterLogo(),
              ),
              Column(
                children: drawerOptions,
              )
            ]
          ),
        ),
        body: _getSelectedDrawerItem(_selectedDrawerIndex),
      );
    }
  }
