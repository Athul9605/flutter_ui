import 'package:flutter/material.dart';
class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  TextEditingController nameController = TextEditingController();

  var _value=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Simple Async prefilled form'),
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
                  decoration: InputDecoration (fillColor: Colors.indigoAccent, filled: true ,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.white),),
                    labelText: 'Prefilled text field',
                    hintText: 'Iam prefilled 🔥 yeah',
                  ),
                ),
              ),
              Container(

                  child:CheckboxListTile(
                    title: const Text("Terms&Condition"),
                    subtitle: const Text('Accept Terms&Condition'),
                    secondary: const Icon(Icons.lock),
                    autofocus: false,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    selected: _value,
                    value: _value,
                    onChanged: (value) {
                      assert(value != null);
                      setState(() {
                        _value = value!;
                      });
                    },


                  ),
              ),

              Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.all(10),
                child: RaisedButton (textColor: Colors.black,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text('SAVE'),
                  onPressed: () {},
                ),
              ),
            ],),));
  }
}