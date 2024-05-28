import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:peg/Presentation/Design/description.dart';

class DesignScreen extends StatefulWidget {
  @override
  _DesignScreenState createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.design_services_outlined),
            SizedBox(width: 8), // Adjust the spacing as needed
            Text('Design'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Roadmap you might like',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // New Cards
              Container(
                height: 180,
                width: 150,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Image.asset('assets/figma (1).png', height: 50, width: 50),
                    Text(
                      'Mastering UI/UX Design',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add button onPressed logic
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Start journey',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 150,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Image.asset('assets/adobe-illustrator.png', height: 50, width: 50),
                    Text(
                      'Illustration',
                      style: TextStyle(fontSize: 12, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
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
                        'Start journey',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 150,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Image.asset('assets/adobe.png', height: 50, width: 50),
                    Text(
                      'Photoshop',
                      style: TextStyle(fontSize: 12, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
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
                        'Start journey',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Restricted PEGs',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // New Cards
                    Container(
                      height: 180,
                      // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset(
                                'assets/graphic.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              'Introduction to Graphic Design',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              'Rs 99.00',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
                            children: [
                              RatingStars(
                                value: value,
                                onValueChanged: (v) {
                                  setState(() {
                                    value = v;
                                  });
                                },
                                starBuilder: (index, color) =>
                                    Icon(
                                      Icons.star,
                                      color: color,
                                    ),
                                starCount: 5,
                                starSize: 18,
                                valueLabelVisibility: false,
                                // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (2.1k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),

                    Container(
                      height: 180,
                      // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset(
                                'assets/WebDesign.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              'Web Design',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              'Rs 500.00',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
                            children: [
                              RatingStars(
                                value: value,
                                onValueChanged: (v) {
                                  setState(() {
                                    value = v;
                                  });
                                },
                                starBuilder: (index, color) =>
                                    Icon(
                                      Icons.star,
                                      color: color,
                                    ),
                                starCount: 5,
                                starSize: 18,
                                valueLabelVisibility: false,
                                // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (3.5k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset(
                                'assets/Game.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              '2D Game Development with libGDX',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            // Equal horizontal padding
                            child: Text(
                              'Rs 199.00',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
                            children: [
                              RatingStars(
                                value: value,
                                onValueChanged: (v) {
                                  setState(() {
                                    value = v;
                                  });
                                },
                                starBuilder: (index, color) =>
                                    Icon(
                                      Icons.star,
                                      color: color,
                                    ),
                                starCount: 5,
                                starSize: 18,
                                valueLabelVisibility: false,
                                // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (43)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Open PEGs',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // New Cards
                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/Build3d.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Build a 3D Icon for UI Design',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Free',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (1,125)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),

                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/Uidashboard.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'UI Dashboard Design',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Free',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (1.5k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/Figma1.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Learn Figma For Beginners',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Free',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (1.5k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Popular PEGs',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // New Cards
                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/3Dblender.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              '3D Blender: Introduction & Essentials',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Rs 500.00',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (3.5k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),

                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/Figma1.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Learn Figma For Beginners',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Free',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (1.5k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    Container(
                      height: 180, // Increased height
                      width: 150,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // Equal padding
                            child: Image.asset('assets/WebDesign.png', height: 70, width: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Web Design',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comfortaa',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                            child: Text(
                              'Rs 500.00',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row( // Added Row widget for RatingStars and text
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
                                valueLabelVisibility: false, // Set valueLabelVisibility to false
                                starSpacing: 2,
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Color.fromRGBO(0, 252, 206, 30),
                              ),
                              Text(
                                '   (2k)',
                                style: TextStyle(
                                  fontSize: 10,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ],
    ),
    ),
    );
  }
}