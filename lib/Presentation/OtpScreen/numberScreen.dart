import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:peg/Presentation/OtpScreen/otpScreen.dart';

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Number Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's Your Mobile Phone Number?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 252, 206, 30),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter your mobile phone number so we can text you an authentication code.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'US', // Default country code
              onChanged: (phone) {
                print(phone.completeNumber); // Output the complete phone number
              },
            ),
            SizedBox(height: 20), // Add some space before the button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                  print("Send Code button pressed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Send Code',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}