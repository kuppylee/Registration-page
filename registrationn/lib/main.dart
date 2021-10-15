import 'package:flutter/material.dart';
import 'package:registrationn/Screens/Welcome.dart';
import 'Screens/Login.dart';
import 'Screens/Sign_Up.dart';
import 'Screens/Thank_You.dart';
import 'Screens/Welcome.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => WelcomePage(),
    '/LoginPage': (context) => Login(),
    '/SignUp': (context) => SignUp(),
    '/ThankYou': (context) => ThankYouPage()
  },
));