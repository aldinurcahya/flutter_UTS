import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/login.dart';

void main() {
  runApp(new AboutEC(
  ));
}

class AboutEC extends StatelessWidget {
  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    final foto = Hero(
      tag: 'profil',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
      ),
    );

    final judul = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hi, Saya Aldi Risman',
        style: TextStyle(fontSize: 28.0, color: Colors.brown),
      ),
    );

    final isi = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '         Saya Mahasiswa dari Sekolah Tinggi Teknologi Bandung, Jurusan Teknik Informatika, dengan NPM 18111246. Saya tinggal di Cililin Kab. Bandung Barat. '
            'Aplikasi ini adalah aplikasi E-Commerce dimana barang yang dijual adalah Kue Bolu, Anda bisa membeli kue bolu dengan aplikasi ini.',
        style: TextStyle(fontSize: 18.0, color: Colors.brown), textAlign: TextAlign.justify
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

    final c =  Column(
      children: <Widget>[
        Icon(Icons.copyright, size: 20.0, color: Colors.brown,),
        Text("by Aldi Risman Nurcahya", style: new TextStyle(fontSize: 18.0,color: Colors.brown),)
  ],
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
        children: <Widget>[foto, judul, isi, tombol, c],
      ),
    );



    return Scaffold(
      body: body,
    );
  }
}
