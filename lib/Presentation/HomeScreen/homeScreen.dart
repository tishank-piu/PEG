import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:lottie/lottie.dart';
import 'package:peg/Presentation/CreatePegScreen/createPegScreen.dart';
import 'package:peg/Presentation/PegScreen/pegScreen.dart';
import 'package:peg/Presentation//QuizScreen/quizScreen.dart';
import 'package:peg/Presentation//WalletScreen/walletScreen.dart';

import '../CartScreen/cartScreen.dart';
import '../LeaderboardScreen/leaderboardScreen.dart';
import '../LoginScreen/loginScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSlide = 0;
  double value = 3.5;

  // Function to show logout confirmation dialog
  Future<void> _showLogoutDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to logout?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                // Navigate to the login screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('My Profile'),
                value: 'profile',
              ),
              PopupMenuItem(
                child: Text('Invite a friend'),
                value: 'invite',
              ),
              PopupMenuItem(
                child: Text('My Dashboard'),
                value: 'dashboard',
              ),
              PopupMenuItem(
                child: Text('Logout'),
                value: 'logout',
              ),
            ],
            onSelected: (value) {
              // Handle menu item selection
              if (value == 'profile') {
                // Handle My Profile action
              } else if (value == 'invite') {
                // Handle Invite a friend action
              } else if (value == 'dashboard') {
                // Handle My Dashboard action
              } else if (value == 'logout') {
                // Handle Logout action
                _showLogoutDialog();
              }
            },
          ),
          SizedBox(width: 16),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0), // Add some left padding
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black, // Adjust icon color as needed
                  size: 24, // Adjust icon size as needed
                ),
              ),
              SizedBox(width: 10, height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello User',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16), // Adjust font size as needed
                  ),
                  Text(
                    'Explore the PEG which you are interested',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 10, color: Colors.grey), // Adjust font size and color as needed
                  ),
                ],
              ) // Add some space between CircleAvatar and Text
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSlide = index;
                });
              },
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
            ),
            items: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePegScreen()),
                  );
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/Create.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Invite.png', // Replace 'your_image_asset_name' with the actual asset name
                      fit: BoxFit.cover, // Adjust the fit as needed
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/Quiz.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeaderboardScreen()),
                  );
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/Leaderboard.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Store.png', // Replace 'your_image_asset_name' with the actual asset name
                      fit: BoxFit.cover, // Adjust the fit as needed
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                        Image.asset('assets/html.png', height: 50, width: 50),
                        Text(
                          'Mastering HTML',
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
                        Image.asset('assets/flutter.png', height: 50, width: 50),
                        Text(
                          'Mastering Flutter',
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
                        child: Image.asset('assets/Digital.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Digital Marketing for beginners',
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
                        child: Image.asset('assets/FlutterWallpaper.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Learn Flutter For Beginners',
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
                        child: Image.asset('assets/Embedded.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Learn For Embedded Systems',
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
                        child: Image.asset('assets/AWS.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Amazon AWS Certification',
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
                        child: Image.asset('assets/FlutterWallpaper.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Learn Flutter For Beginners',
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
                        child: Image.asset('assets/Embedded.png', height: 70, width: 200),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
                        child: Text(
                          'Learn For Embedded Systems',
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

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.account_balance_wallet),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WalletScreen())
                  );
                  // Handle wallet button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle cart button pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  // Handle PEG button pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PegScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.leaderboard_outlined),
                onPressed: () {
                  // Handle leaderboard button pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LeaderboardScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.quiz),
                onPressed: () {
                  // Handle quiz button pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
