import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loaner24/phone_auth.dart';
import 'package:loaner24/signin_page.dart';
import 'package:loaner24/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loaner24',
      home: PhoneAuthPage(),
      routes: {
        '/signin': (context) => SignInPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}