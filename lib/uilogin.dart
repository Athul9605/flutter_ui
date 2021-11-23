import 'package:flutter/material.dart';
import 'package:flutter_ui/second_page.dart';

class Assign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Assign> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Complex Login'),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(

                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    controller: nameController,
                    decoration: InputDecoration(fillColor: Colors.indigoAccent, filled: true ,
                      enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),borderSide: BorderSide(color: Colors.white,),),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Enter your Email id',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(fillColor: Colors.indigoAccent, filled: true ,
                      enabledBorder: OutlineInputBorder( borderSide:BorderSide(color: Colors.white,), borderRadius:  BorderRadius.circular(25.0),),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Enter your password',

                    ),
                  ),
                ),
                Container(

                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(fillColor: Colors.indigoAccent, filled: true ,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.white),),
                      labelText: 'Response',
                      hintText: 'Enter your Response',
                    ),
                  ),
                ),

                Container(
                    padding: EdgeInsets.all(20),
                    height: 80,
                    width: 200,
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('Login'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),

                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Spage()));

                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
              ],
            )));
  }
}
