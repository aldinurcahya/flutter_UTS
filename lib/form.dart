import 'package:flutter/material.dart';
import 'package:flutter_app/beranda.dart';

void main() {
  runApp(new form(
  ));
}

class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  List<String> agama=["Islam","Kristen","Hindu","Budha","Lainnya"];
  String _agama="Islam";
  String _jk="";

  TextEditingController controllernama= new TextEditingController();
  TextEditingController controllerpwd= new TextEditingController();
  TextEditingController controlleralamat= new TextEditingController();

  void _pilihjk (String value){
    setState(() {
      _jk=value;
    });
  }
  void _pilihagama (String value){
    setState(() {
      _agama=value;
    });
  }
  void kirim(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama : ${controllernama.text}"),
            new Text("Password : ${controllerpwd.text}"),
            new Text("Alamat : ${controlleralamat.text}"),
            new Text("jenis Kelamin : $_jk"),
            new Text("Agama : $_agama"),
            new RaisedButton(
                child: new Text("OK"),
            onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) {
              return BerandaEC();
    }));
            },),
          ],
        ),
      ),
    );
    showDialog(context: context,child: alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Formulir"),
        backgroundColor: Colors.yellow,
      ),

      body: new ListView(
        children: <Widget>[
       new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllernama,
              decoration: new InputDecoration(
                hintText: "Nama",
                labelText: "Nama",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20.0)
                )
              ),
            ),

            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new TextField(
              controller: controllerpwd,
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),

            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new TextField(
              controller: controlleralamat,
             maxLines: 3,
              decoration: new InputDecoration(
                  hintText: "Alamat",
                  labelText: "Alamat",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),

            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new RadioListTile(
                value: "Laki laki",
                title: new Text("Laki Laki"),
                groupValue: _jk,
                onChanged: (String value){
                  _pilihjk(value);
                },
              activeColor: Colors.brown,
                ),

            new RadioListTile(
              value: "Perempuan",
              title: new Text("Perempuan"),
              groupValue: _jk,
              onChanged: (String value){
                _pilihjk(value);
              },
              activeColor: Colors.brown,
            ),

            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new Row(
              children: <Widget>[
                new Text("Agama", style: new TextStyle(fontSize: 15.0, color: Colors.brown),),
                new DropdownButton(
                  onChanged: (String value){
                    _pilihagama(value);
                  },
                  value: _agama,
                  items: agama.map((String value){
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                )
              ],
            ),

            new RaisedButton(
                child: new Text("OK"),
                color: Colors.white24,
                onPressed: (){kirim();}),

          ],
        ),
      ),
  ],
      ),
    );
  }
}
