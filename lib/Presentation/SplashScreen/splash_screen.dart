import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    navigateToHomeScreen();
  }

  navigateToHomeScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/peg_logo.jpeg',
              width: 200,
                height: 200,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}