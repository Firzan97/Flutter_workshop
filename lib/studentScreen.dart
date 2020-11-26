import 'package:flutter/material.dart';
import 'package:flutter_workshop/StudentAdd.dart';
import 'package:flutter_workshop/StudentList.dart';
import 'package:flutter_workshop/StudentEdit.dart';
import 'package:flutter_workshop/StudentList.dart';

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child:               Text("Add new student"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentAdd()),
                );
              },
            ),
            RaisedButton(
                child:               Text("List of student"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentDisplay()),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}
