import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View/loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: LoginPage(),
    );
  }
}
