import 'package:flutter/material.dart';
import 'package:peg/Presentation/DifficultyScreen/difficultyScreen.dart';
import 'package:peg/Presentation/HomeScreen/homeScreen.dart';

class InterestFeedScreen extends StatefulWidget {
  @override
  _InterestFeedScreenState createState() => _InterestFeedScreenState();
}

class _InterestFeedScreenState extends State<InterestFeedScreen> {
  final List<String> interests = [
    'News and Events',
    'Entertainment',
    'Lifestyle',
    'Personal Development',
    'Humor and Memes',
    'Sports',
    'Science',
    'History',
    'Animals',
    'Education',
    'Technology Information',
    'Product and Brand',
    'Marketing',
    'Scary Things',
    'Movies',
    'Music',
  ];

  final Set<String> selectedInterests = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personalize your experience'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personalize your experience',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:  Color.fromRGBO(0, 252, 206, 30),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You can customize your feed by following topics or people that interest you the most.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: interests.map((interest) {
                  bool isSelected = selectedInterests.contains(interest);
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isSelected) {
                          selectedInterests.remove(interest);
                        } else {
                          selectedInterests.add(interest);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected ?  Color.fromRGBO(0, 252, 206, 30) : Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      interest,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  );
                }).toList(),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DifficultyScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color.fromRGBO(0, 252, 206, 30),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Skip for Now',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
