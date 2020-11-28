import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop/StudentAdd.dart';
import 'package:flutter_workshop/StudentList.dart';
import 'package:flutter_workshop/map.dart';
import 'package:flutter_workshop/pokemon/pokemonHome.dart';
import 'package:flutter_workshop/studentScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_workshop/test.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: MapSample()
    );
  }
}
