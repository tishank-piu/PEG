import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class PegScreen extends StatefulWidget {
  @override
  _PegScreenState createState() => _PegScreenState();
}

class _PegScreenState extends State<PegScreen> {
  TextEditingController _searchController = TextEditingController();
  FocusNode _searchFocusNode = FocusNode();
  bool _showSuggestions = false;
  double value = 3.5;

  @override
  void initState() {
    super.initState();
    _searchFocusNode.addListener(() {
      setState(() {
        _showSuggestions = _searchFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PEGs'),
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                focusNode: _searchFocusNode,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onChanged: (value) {
                  // Implement search functionality here
                },
              ),
            ),
            if (_showSuggestions)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2, // Placeholder for PEGs list
                itemBuilder: (context, index) {
                  // Placeholder data for PEGs list
                  final String pegName = 'PEG ${index + 1}';
                  return ListTile(
                    title: Text(pegName),
                    // Add more details as needed
                  );
                },
              ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Explore categories',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 2.0,
                runSpacing: 8.0,
                children: [
                  _buildIconBox(Icons.design_services_outlined, 'Design'),
                  _buildIconBox(Icons.code_off_rounded, 'Programmer'),
                  _buildIconBox(Icons.currency_exchange, 'Finance'),
                  _buildIconBox(Icons.settings, 'Soft Skill'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 2.0,
                runSpacing: 8.0,
                children: [
                  _buildIconBox(Icons.account_balance_outlined, 'Accountancy'),
                  _buildIconBox(Icons.account_tree_outlined, 'Data Science'),
                  _buildIconBox(Icons.language, 'Language'),
                  _buildIconBox(Icons.data_exploration, 'Marketing'),
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
                          child: Image.asset('assets/graphic.png', height: 70, width: 200),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
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
                          padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
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
                          child: Image.asset('assets/Game.png', height: 70, width: 200),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
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
                          padding: EdgeInsets.symmetric(horizontal: 5), // Equal horizontal padding
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
    );
  }

  Widget _buildIconBox(IconData icon, String text) {
    return SizedBox(
      width: 90,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 252, 206, 30),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(icon, size: 32),
          ),
          SizedBox(height: 6),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
