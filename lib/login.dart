import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/about.dart';
import 'package:flutter_app/beranda.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/regist.dart';

void main() {
  runApp(new LoginEC(
  ));
}

class LoginEC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login EC",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

              Text("Selamat Datang, Silahkan Login", style: TextStyle(fontSize: 20, color: Colors.black) ,),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  prefixIcon: Icon(Icons.person, size: 40),
                  hintText: "Masukkan Username",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Username",
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

              Card(
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
                          child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white),),
//                      onPressed: () {},
                        )
                    ),
                  )
              ),

              Text("Buat akun baru,", style: TextStyle(fontSize: 20, color: Colors.black) ),
                Card(
                    color: Colors.brown,
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                          splashColor: Colors.white,
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return RegistEC();
                            }));
                          },
                          child: Center(
//                    child: RaisedButton(
                            child: Text("Register", style: TextStyle(fontSize: 20, color: Colors.white),),
//                      onPressed: () {},
                          )
                      ),
                    )
                ),

            ],
          ),
        )
    );
    throw UnimplementedError();
  }

}
//@aldi_rn