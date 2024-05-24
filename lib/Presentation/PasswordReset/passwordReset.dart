import 'package:flutter/material.dart';
import 'package:peg/Presentation/OtpScreen/numberScreen.dart';
import 'package:peg/Presentation/SignUpScreen/signup_Screen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildEmailTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your Email',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(0, 252, 206, 30),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Please enter an email address to request a password reset.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add button onPressed logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Send Link',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your Phone Number',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(0, 252, 206, 30),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Please enter your phone number to request a password reset.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20.0),
          IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(),
            ),
            initialCountryCode: 'US',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add button onPressed logic
                Navigator.push(context, MaterialPageRoute(builder: (context) => NumberScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Send Link',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpText() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              // Handle Sign Up action
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(0, 252, 206, 30),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Reset'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: PreferredSize(
                  preferredSize: Size.fromHeight(36.0), // make TabBar smaller
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(text: 'Email'),
                      Tab(text: 'Phone'),
                    ],
                    indicatorColor: Color.fromRGBO(0, 252, 206, 30),
                    labelStyle: TextStyle(fontSize: 14),
                    unselectedLabelStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildEmailTab(),
                    _buildPhoneTab(),
                  ],
                ),
              ),
              _buildSignUpText(),
            ],
          ),
        ),
      ),
    );
  }
}
