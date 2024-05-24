import 'package:flutter/material.dart';
import 'package:peg/Presentation/HomeScreen/homeScreen.dart';

class DifficultyScreen extends StatefulWidget {
  @override
  _DifficultyScreenState createState() => _DifficultyScreenState();
}

class _DifficultyScreenState extends State<DifficultyScreen> {
  final List<Map<String, String>> difficultyLevels = [
    {
      'title': 'Entry Level',
      'description': 'I\'m at the beginning of my journey, excited to absorb knowledge and gain experience.',
    },
    {
      'title': 'Basic Level',
      'description': 'I\'ve laid the foundation with the basics and I\'m eager to expand upon that foundation.',
    },
    {
      'title': 'Middle Level',
      'description': 'I\'ve gained a solid level of expertise and now ready to advance more complex challenges.',
    },
    {
      'title': 'Top Level',
      'description': 'I\'m at an advanced stage, experienced and ready for leadership and complex projects.',
    },
  ];

  String selectedLevel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Level'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Your Level',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We will prepare a customized program to your proficiency level.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: difficultyLevels.length,
                itemBuilder: (context, index) {
                  String title = difficultyLevels[index]['title']!;
                  String description = difficultyLevels[index]['description']!;
                  bool isSelected = selectedLevel == title;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedLevel = title;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSelected ? Color.fromRGBO(0, 252, 206, 30) : Colors.grey,
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                  if (selectedLevel.isNotEmpty) {
                    // Perform the action on clicking "Done"
                    print('Selected Level: $selectedLevel');
                    // Navigate to the next screen or perform any action
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    // Show a message to select a level
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please select a difficulty level.')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Done',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}