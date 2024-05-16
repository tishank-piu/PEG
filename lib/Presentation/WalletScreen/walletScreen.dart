import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
        title: Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'P-wallet Earnings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text('January 2024'),
                    subtitle: Text('Total earnings: \$500'),
                  ),
                  ListTile(
                    title: Text('February 2024'),
                    subtitle: Text('Total earnings: \$600'),
                  ),
                  // Add more entries as needed
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Gifts Received',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text('Gift 1'),
                    subtitle: Text('From: User A'),
                    trailing: Text('+\$50'),
                  ),
                  ListTile(
                    title: Text('Gift 2'),
                    subtitle: Text('From: User B'),
                    trailing: Text('+\$30'),
                  ),
                  // Add more entries as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
