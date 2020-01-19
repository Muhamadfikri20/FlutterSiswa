import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_slqlite/Form/FormSiswa.dart';
import 'package:simple_slqlite/HomeScreen/HomeScreen.dart';
import 'package:simple_slqlite/Login.dart';
import 'package:simple_slqlite/Register.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  First createState() => First();
}

class First extends State<MyApp> {

  @override
  void initState() {

    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(24, 50, 119, 1),
        accentColor: Color.fromRGBO(255, 85, 0, 1),
        errorColor: Color.fromRGBO(220,20,60, 1),
        toggleableActiveColor: Color.fromRGBO(255, 85, 0, 1),

        // Define the default font family.
        fontFamily: 'Segoeui',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme (
          headline: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white),
          subhead: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Color.fromRGBO(24, 50, 119, 1)),
          title: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Color.fromRGBO(255, 85, 0, 1)),
          body1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
          body2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Color.fromRGBO(255, 85, 0, 1)),
        ),

      ),
      debugShowCheckedModeBanner: false,
      home:FormLogin(),
      routes: {
        '/loginPage': (context){
          return FormLogin();
        },
        '/formSiswa': (context){
          return FormSiswa();
        },
        '/register': (context){
          return FormRegister();
        },
        '/homeScreen': (context){
          return HomeScreen();
        },
      },
    );
  }
}
