import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:peg/Presentation/PaymentScreen/paymentScreen.dart';
import 'package:video_player/video_player.dart';

class DescriptionScreen extends StatefulWidget {
  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  double value = 3.5;
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4").toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mastering UI/UX Design',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Comfortaa',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Application History in the World',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Free',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RatingStars(
                    value: value,
                    onValueChanged: (v) {
                      setState(() {
                        value = v;
                      });
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                    ),
                    starCount: 5,
                    starSize: 18,
                    valueLabelVisibility: false,
                    starSpacing: 7,
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: Color.fromRGBO(0, 252, 206, 30),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '  (3,647)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Preview class'),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlickVideoPlayer(flickManager: flickManager),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('10 lessons (1 hour 25 min)'),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildLessonBox(Icons.play_circle, 'Lecture 1'),
                  SizedBox(height: 10),
                  _buildLessonBox(Icons.play_circle, 'Lecture 2'),
                  SizedBox(height: 10),
                  _buildLessonBox(Icons.play_circle, 'Lecture 3'),
                  SizedBox(height: 10),
                  _buildLessonBox(Icons.play_circle, 'Lecture 4'),
                  SizedBox(height: 10),
                  _buildLessonBox(Icons.play_circle, 'Lecture 5'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add button onPressed logic
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Buy Class',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tools Required',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/figma (1).png', // Replace 'assets/image.png' with the path to your image asset
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.centerLeft, // Make the image take up the full width
                    // Adjust the fit of the image as needed
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Figma',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'About Class',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'This Class is an early stage to learn more about Application History, When the application was first created, by who the creator was, and why the application was created to the development of the application today.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Key Point',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                _buildKeyPoint('Understand Why the App.', Icons.check),
                _buildKeyPoint('The essence of App Creation.', Icons.check),
                _buildKeyPoint('Applications use for human life.', Icons.check),
                _buildKeyPoint(
                  'The impact of the application on the civilization of the world\'s cultures.',
                  Icons.check,
                ),
                _buildKeyPoint(
                  'Understand the development of applications from time to time.',
                  Icons.check,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Benefits',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.cyanAccent, // Set the color of the icon
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Lifelong class material.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Mentor class',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Ensure the text is left-aligned within the column
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10), // Adjusted from width to height for better spacing
                    Text(
                      'Jacob Jones',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Ensure the text is left-aligned within the column
                  children: [
                    Text(
                      'Sr. UI/UX Designer at Malaka Company, SGP.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Get in touch!'),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.camera_alt), // Instagram icon (use a suitable icon or image)
                          onPressed: () {
                            // Handle Instagram icon tap
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.music_note), // TikTok icon (use a suitable icon or image)
                          onPressed: () {
                            // Handle TikTok icon tap
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.videocam), // YouTube icon (use a suitable icon or image)
                          onPressed: () {
                            // Handle YouTube icon tap
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyPoint(String text, IconData icon) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(height: 10),
          Icon(
            icon,
            color: Color.fromRGBO(0, 252, 206, 30),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonBox(IconData icon, String text) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color.fromRGBO(0, 252, 206, 30),
          ),
          SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}
