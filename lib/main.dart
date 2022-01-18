import 'package:flutter/material.dart';
import 'package:sign_up_ui/pages/login_page.dart';
import 'package:sign_up_ui/pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
        routes: {
          SignUpPage.id: (context) => SignUpPage(),
          LoginPage.id:(context)=>LoginPage(),
        });
  }
}
