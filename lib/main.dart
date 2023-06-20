import 'package:flutter/material.dart';
import 'package:loginapp/screen/login_screen.dart';

void main()=> runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginScreen(),
    );
  }
}


  
