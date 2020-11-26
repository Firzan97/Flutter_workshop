import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class StudentUpdate extends StatefulWidget {
  final DocumentSnapshot data;

  StudentUpdate(this.data);

  @override
  _StudentUpdateState createState() => _StudentUpdateState();
}

class _StudentUpdateState extends State<StudentUpdate> {
  TextEditingController name = new TextEditingController();
  TextEditingController id = new TextEditingController();
  TextEditingController programme = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();

  List<String> skills =[];
  bool checkedValue=false;
  Color skillColors = Colors.green;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStudentData();
  }

  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Update Student"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: size.width,
          child: Column(
            children: [

              SizedBox(height: size.height*0.03,),
              Container(
                width: size.width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 12,
                        spreadRadius: 3,
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: size.height*0.02,),

                    Text("Student Name :"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("Student id :"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: TextField(
                        controller: id,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("Student Email"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("Student programme :"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: TextField(
                        controller: programme,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("Phone Number"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: TextField(
                        controller: phoneNumber,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text("Update"),
                        onPressed: (){
                          updateStudent(widget.data.id) ;
                          Navigator.pop(context);

                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  updateStudent(uid ) async{
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('Student');
    return await collectionReference.doc(uid).set({
      "name": name.text,
      "id": id.text,
      "email": email.text,
      "programme": programme.text,
      "phoneNumber": phoneNumber.text
    });
  }

  getStudentData(){
    name.text=widget.data["name"];
    id.text=widget.data["id"];
    programme.text=widget.data["programme"];
    email.text=widget.data["email"];
    phoneNumber.text=widget.data["phoneNumber"];
  }

}
