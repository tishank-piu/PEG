import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peg/Presentation/PasswordReset/passwordReset.dart';
import 'Presentation/LoginScreen/loginScreen.dart';
import 'Presentation/SplashScreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
       routes: {
        '/': (context) => SplashScreen(),
       '/login': (context) => LoginScreen(),
      },
     // home:SplashScreen(),
    );
  }
}