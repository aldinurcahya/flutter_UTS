import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/regist.dart';
import 'package:flutter_app/about.dart';
import 'package:flutter_app/side.dart';

class BerandaEC extends StatefulWidget {
  @override
  _BerandaECState createState() => _BerandaECState();
}

class _BerandaECState extends State<BerandaEC> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    LoginEC(),
    RegistEC(),
    AboutEC(),
  ];


  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[

//          _widgetOptions().elementAt(_selectedIndex),

          _top(),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Kategori", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                Text("View All", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 3/2),
              children: <Widget>[
                _gridItem(Icons.fastfood),
                _gridItem(Icons.tablet_android),
                _gridItem(Icons.games),
                _gridItem(Icons.airport_shuttle),
                _gridItem(Icons.mail),
                _gridItem(Icons.cake),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
              Text("Popular", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
            ],
          ),
          ),
          _cardItem(1),
          _cardItem(2),
          _cardItem(3),
          _cardItem(4),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Order'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

      drawer: SideScreen(),

    );
  }


  _cardItem(image){
    return Padding(padding: EdgeInsets.all(16.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mokup.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Bolu Wajit Cililin", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            ),
          SizedBox(height: 10.0),
            Text(
              "Kota Bandung", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.0,
              color: Colors.brown,
            ),
            )
          ],
        )
      ],
    ),);
  }

  _gridItem(icon){
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,size: 20.0,
            color: Colors.brown,
          ),
          backgroundColor: Colors.yellow.withOpacity(1.0),
        ),
        SizedBox(height: 15.0),
        Text("Klik disini", style: TextStyle(fontSize: 10.0),)
      ],
    );
  }

  _top(){
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        )
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              SizedBox(width: 10.0),
              Text("Hi, Aldi RN", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),),
            ],
          ),
//          IconButton(
//            icon: Icon(Icons.notifications), onPressed: () {
//            Navigator.pushReplacement(
//                context, MaterialPageRoute(builder: (context) {
//              return LoginEC();
//            }));
//          },),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0)

            ),
          )
        ],
      ),
    );
  }
  
}
