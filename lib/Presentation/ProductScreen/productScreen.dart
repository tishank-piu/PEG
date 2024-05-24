import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'Design', 'icon': 'assets/Designlogo.png'},
    {'name': 'Programmer', 'icon': 'assets/programmerlogo.png'},
    {'name': 'Finance', 'icon': 'assets/financelogo.png'},
    {'name': 'Soft Skills', 'icon': 'assets/softskilllogo.png'},
    {'name': 'Accountancy', 'icon': 'assets/accountancylogo.png'},
    {'name': 'Data Science', 'icon': 'assets/datasciencelogo.png'},
    {'name': 'Language', 'icon': 'assets/languagelogo.png'},
    {'name': 'Marketing', 'icon': 'assets/marketlogo.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle category tap
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey[300],
                            backgroundImage: AssetImage(category['icon']!),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          category['name']!,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Text('Explore', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            )),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
