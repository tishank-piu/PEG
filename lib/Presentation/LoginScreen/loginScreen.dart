import 'package:flutter/material.dart';
import 'package:peg/Presentation//HomeScreen/homeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peg/Presentation/ForgetPassword/forgetPassword.dart';
import 'package:peg/Presentation/InterestFeedScreen/interestFeedScreen.dart';
import '../SignUpScreen/signup_Screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: SingleChildScrollView( // Wrap Scaffold with SingleChildScrollView
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/peg_logo.jpeg',
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      SizedBox(
                        height: 120,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 252, 206, 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 252, 206, 30),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Text(
                          'Nice to see you back, you can log in and continue your learning progress',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter your Password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        width: 400,
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            // Add your onTap logic here
                            print("Forget Password? clicked");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                            // You can navigate to another screen or perform any other action here
                          },
                          child: Text(
                            'Forget Password?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Email: ${_emailController.text}');
                            print('Password: ${_passwordController.text}');
                          }
                          Navigator.push(context, MaterialPageRoute(builder:  (context) => InterestFeedScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 20,
                        child: Text(
                          'Or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      minimumSize: Size(200, 50), // Set the width and height of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign In With',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(width: 8), // Add some space between the text and the image
                        SvgPicture.asset(
                          "assets/facebook.svg",
                          width: 70, // Adjust width to fit well with the text
                          height: 70, // Adjust height to fit well with the text
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      minimumSize: Size(200, 2), // Set the width and height of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign In With',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(width: 8), // Add some space between the text and the image
                        SvgPicture.asset(
                          "assets/google.svg",
                          width: 70, // Adjust width to fit well with the text
                          height: 70, // Adjust height to fit well with the text
                        ),
                      ],
                    ),
                  ),
                ],
              )

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
