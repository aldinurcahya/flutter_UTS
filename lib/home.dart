import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/about.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/isiEC.dart';
import 'package:flutter_app/regist.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/side.dart';
import 'package:flutter_app/side.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/isiEC.dart';

import 'login.dart';
import 'about.dart';
import 'regist.dart';

void main() {
  runApp(new HomeEC(
  ));
}

class HomeEC extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<HomeEC> {

  List<Container> daftarbolu = new List();

  var bolu = [
    {"nama": "Bolu Wajit", "gambar": "bolu1.jpg"},
    {"nama": "Bolu 2", "gambar": "bolu2.jpg"},
    {"nama": "Bolu 3", "gambar": "bolu3.jpg"},
    {"nama": "Bolu 4", "gambar": "bolu4.jpg"},
    {"nama": "Bolu 5", "gambar": "bolu5.jpg"},
    {"nama": "Bolu 6", "gambar": "bolu6.jpg"},
    {"nama": "Bolu 7", "gambar": "bolu7.jpg"},
    {"nama": "Bolu 8", "gambar": "bolu8.jpg"},
  ];

  _listbolu() async {
    for (var i = 0; i < bolu.length; i++) {
      final bolunya = bolu[i];
      final String gambar = bolunya["gambar"];

      daftarbolu.add(
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Card(
              child: new Column(
                children: <Widget>[

                  new Hero(
                    tag: bolunya['nama'],
                    child: new Material(
                      child: new InkWell(
                        onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: bolunya['nama'], gambar: gambar,),
                        )),
                        child: new Image.asset("assets/$gambar" , fit: BoxFit.cover,),
                      ),
                    ),
                  ),


                  new Padding(padding: new EdgeInsets.all(10.0),),
                  new Text(bolunya['nama'], style: new TextStyle(fontSize: 18.0),)
                ],
              )
            ),
          )
      );
    }
  }

  void initState() {
    _listbolu();
    super.initState();
  }

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    LoginEC(),
    RegistEC(),
    AboutEC(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ANEKA BOLU",
          style: new TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.brown
          ),),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),

//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),

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

      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarbolu,


      ),
    );
  }

}

class Detail extends StatelessWidget {
  Detail({this.nama,this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
      children: <Widget>[
        new Container(
          height: 240.0,
          child:
            new Hero(
              tag: nama,
                child: new Material(
                   child: new InkWell(
                      child: new Image.asset("assets/$gambar", fit: BoxFit.cover,),
          ),
        ),
            ),
        ),

        new bagiannama(nama: nama,),
        new bagianicon(),
        new bagianisi(),
        new kembali(),

      ],
      ),
    );
  }
}

class bagiannama extends StatelessWidget {
  bagiannama({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                nama,
                style: new TextStyle(fontSize: 20.0, color: Colors.brown),
              ),
              new Text(
                "$nama\@gmail.com",
                style: new TextStyle(fontSize: 17.0, color: Colors.grey),
              ),
            ],
          ),
          ),
          new Row(
            children: <Widget>[
              new Icon(Icons.star,size: 50.0, color: Colors.yellow,),
              new Text("5", style: new TextStyle(fontSize: 18.0),)
            ],
          ),
        ],
      ),


    );
  }
}

class bagianicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(icon: Icons.add_shopping_cart, teks: "Tambah",),
          new Iconteks(icon: Icons.message, teks: "Chat",),
          new Iconteks(icon: Icons.favorite_border, teks: "Suka",),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(icon, size: 50.0, color: Colors.brown,),
          new Text(teks, style: new TextStyle(fontSize: 18.0,color: Colors.brown),),
        ],
      ),
    );
  }
}

class bagianisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
        child: new Text("Bolu wajit cililin merupakan kue bolu yang berasal dari cililin. Dibuat dengan wajit yang menjadikan cita rasa yang khas", style: new TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
      ),
      ),
    );
  }
  }

class kembali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          color: Colors.brown,
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Colors.white,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return HomeEC();
                  }));
                },
                    child: Center(
//                    child: RaisedButton(
                        child: Text("Kembali", style: TextStyle(fontSize: 20, color: Colors.white),),
//                      onPressed: () {},
              )
            ),
          )
    ),
    );
  }
}


