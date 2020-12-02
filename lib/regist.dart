import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

void main() {
  runApp(new RegistEC(
  ));
}

class RegistEC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Regist EC",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Regist(),
    );
  }
}

class Regist extends StatefulWidget {
  @override
  _RegistState createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.person, size: 50, color: Colors.yellowAccent,),
                ),
              ),
              SizedBox(height: 20,),

              Text("Selamat Datang, Buat Akun Baru", style: TextStyle(fontSize: 20, color: Colors.black) ,),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  prefixIcon: Icon(Icons.person, size: 40),
                  hintText: "Masukkan Nama",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Nama",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  prefixIcon: Icon(Icons.mail, size: 40),
                  hintText: "Masukkan E-mail",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "E-Mail",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  prefixIcon: Icon(Icons.vpn_key, size: 40),
                  hintText: "Masukkan Password",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  prefixIcon: Icon(Icons.tablet_android, size: 40),
                  hintText: "Masukkan No Hp",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "No-Hp",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              Card(
                  color: Colors.brown,
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return LoginEC();
                          }));
                        },
                        child: Center(
//                    child: RaisedButton(
                          child: Text("Daftar", style: TextStyle(fontSize: 20, color: Colors.white),),
//                      onPressed: () {},
                        )
                    ),
                  )
              )

            ],
          ),
        )
    );
    throw UnimplementedError();
  }

}
//@aldi_rn