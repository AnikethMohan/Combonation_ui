import 'pages/home.dart';
import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>WelcomePage(),
      '/home':(context)=>SignupPage(),
    },
  ));
}