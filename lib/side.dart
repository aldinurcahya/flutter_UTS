import 'package:flutter/material.dart';
import 'package:flutter_app/about.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/form.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/login.dart';

class SideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/profile.jpg'
                          ),
                      ),
                    ),
                  ),
                  Text('ALDI RISMAN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.brown),),
                  Text('aldirn@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.brown),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
              title: Text('Profile', style: TextStyle(fontSize: 15,),
              ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                    return AboutEC();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Cake', style: TextStyle(fontSize: 15,),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                return HomeEC();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontSize: 15,),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                return BerandaEC();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.folder_shared),
            title: Text('Input Data', style: TextStyle(fontSize: 15,),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                return form();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Logout', style: TextStyle(fontSize: 15,),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) {
                  return LoginEC();
              }));
            },
          ),
        ],
      ),
    );

  }
}
