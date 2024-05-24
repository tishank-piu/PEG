import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:peg/Presentation/PegScreen/pegScreen.dart';

import '../HomeScreen/homeScreen.dart';

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/paymentSuccessful.json', // Replace this with the path to your Lottie animation file
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Successful!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have successfully made the class payment.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to PEG screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Go to PEG'),
            ),
          ],
        ),
      ),
    );
  }
}
