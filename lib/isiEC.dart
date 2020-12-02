import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/login.dart';

void main() {
  runApp(new isiEC(
  ));
}

class isiEC extends StatelessWidget {
  static String tag = 'isi-page';

  @override
  Widget build(BuildContext context) {
    final foto = Hero(
      tag: 'bolu',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/bolu1.jpg'),
        ),
      ),
    );

    final judul = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bolu Wajit Cililin',
        style: TextStyle(fontSize: 28.0, color: Colors.brown),
      ),
    );

    final isi = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bolu wajit cililin merupakan kue bolu yang berasal dari cililin. Dibuat dengan wajit yang menjadikan cita rasa yang khas',
        style: TextStyle(fontSize: 16.0, color: Colors.brown),
      ),
    );

    final tombol = Card(
        color: Colors.brown,
        elevation: 5,
        child: Container(
          height: 50,
          child: InkWell(
              splashColor: Colors.white,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return BerandaEC();
                }));
              },
              child: Center(
//                    child: RaisedButton(
                child: Text("Kembali", style: TextStyle(fontSize: 20, color: Colors.white),),
//                      onPressed: () {},
              )
          ),
        )
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.yellow,
          Colors.yellowAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[foto, judul, isi, tombol],
      ),
    );



    return Scaffold(
      body: body,
    );
  }
}
