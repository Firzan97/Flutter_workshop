import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String error='', a = '';
  TextEditingController input = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(a),
            RaisedButton(
              child: Text("Change word"),
              onPressed: (){
             setState(() {
               if(input.text!="")  {
                 return 'Jadi';
               } else {
                 return "error";
               }

             });
              }
            ),
            Text(a),
            Text(error),
            TextField(
              controller: input,
            )

          ],
        ),
      ),
    );
  }
}
