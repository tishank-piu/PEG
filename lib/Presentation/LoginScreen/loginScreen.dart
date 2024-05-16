import 'package:flutter/material.dart';
import 'package:peg/Presentation//HomeScreen/homeScreen.dart';

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
    return WillPopScope(onWillPop: () async {
      return true;
    },
      child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/peg_logo.jpeg',
                  width: 100, // adjust width as needed
                  height: 100, // adjust height as needed
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
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
                  SizedBox(height: 20),
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
                      border: OutlineInputBorder(),
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
                      border: OutlineInputBorder(),
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
                    child: Text(
                      'Forget Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Email: ${_emailController.text}');
                        print('Password: ${_passwordController.text}');
                      }
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => HomeScreen()),
                      );
                    },
                    child: Text('Log in'),
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
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        label: Text('Facebook'),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.social_distance_sharp),
                        label: Text('Google'),
                      )
                    ],
                  )
                ],
              ),
            ],
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
