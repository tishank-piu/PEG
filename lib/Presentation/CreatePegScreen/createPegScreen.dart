import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:peg/Presentation/HomeScreen/homeScreen.dart';
import 'package:peg/Presentation/InvitationPreviewPage/invitationPreviewPage.dart';
import 'package:peg/Presentation/NewCreatePegScreenUsingTemplate/newCreatePegScreenUsingTemplate.dart';

class CreatePegScreen extends StatefulWidget {
  @override
  _CreatePegScreenState createState() => _CreatePegScreenState();
}

class _CreatePegScreenState extends State<CreatePegScreen> {
  // Define controllers for text fields
  TextEditingController pegNameController = TextEditingController();
  TextEditingController pegCategoryController = TextEditingController();
  TextEditingController pegSubCategoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController thumbnailController = TextEditingController();
  TextEditingController sourceController = TextEditingController();
  TextEditingController youtubeLinkController = TextEditingController();

  // Define variable to track selected option for Open/Restricted
  String openRestrictedOption = 'Open';

  // Function to handle finish button click
  void handleFinishButtonClick() {
    // Logic to handle finishing and sharing the invitation
    // You can implement this based on your requirements
    // For now, let's just print the entered details
    print('PEG Name: ${pegNameController.text}');
    print('PEG Category: ${pegCategoryController.text}');
    print('PEG SubCategory: ${pegSubCategoryController.text}');
    print('Open/Restricted: $openRestrictedOption');
    print('Date: ${dateController.text}');
    print('Time: ${timeController.text}');
    print('Message: ${messageController.text}');
    print('Location: ${locationController.text}');
    print('Thumbnail: ${thumbnailController.text}');
    print('Source: ${sourceController.text}');
    print('YouTube Link: ${youtubeLinkController.text}');
  }

  // // Function to show share invitation pop-up
  // void showShareInvitationPopup() {
  //   // Logic to show pop-up with share options
  //   // You can implement this using showDialog()
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Share Invitation'),
  //         content: Text('Share now or later?'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               // Logic for sharing invitation now
  //               // Replace with your implementation
  //               Navigator.pop(context); // Close pop-up
  //               Navigator.push(context, MaterialPageRoute(builder: (context) => InvitationPreviewPage()));
  //             },
  //             child: Text('Share Now'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               // Logic for sharing invitation later
  //               // Replace with your implementation
  //               Navigator.pop(context);// Close pop-up
  //               Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //             },
  //             child: Text('Share Later'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateController.text) {
      setState(() {
        // Format the picked date as dd/mm/yy
        dateController.text =
        "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year.toString().substring(2)}";
      });
    }
  }

  // Function to show time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        // Format the picked time as HH:mm
        timeController.text = picked.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create PEG'),
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create PEG',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Comfortaa',
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PEG Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: pegNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PEG Category',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  value: null,
                  onChanged: (String? value) {
                    setState(() {
                      pegCategoryController.text = value!;
                    });
                  },
                  items: [
                    'Design',
                    'Programmer',
                    'Finance',
                    'Soft Skills',
                    'Accountancy',
                    'Data Science',
                    'Language',
                    'Marketing'
                  ].map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PEG Sub Category',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  value: null,
                  onChanged: (String? value) {
                    setState(() {
                      pegSubCategoryController.text = value!;
                    });
                  },
                  items: ['SubCategory 1', 'SubCategory 2', 'SubCategory 3'].map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Open/Restricted (Free/Paid)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Open'),
                        value: 'Open',
                        groupValue: openRestrictedOption,
                        onChanged: (String? value) {
                          setState(() {
                            openRestrictedOption = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Restricted'),
                        value: 'Restricted',
                        groupValue: openRestrictedOption,
                        onChanged: (String? value) {
                          setState(() {
                            openRestrictedOption = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () => _selectDate(context),
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: dateController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              prefixIcon: Icon(Icons.calendar_today), // Add calendar icon
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () => _selectTime(context),
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: timeController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              prefixIcon: Icon(Icons.access_time), // Add clock icon
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Message to be displayed on the invitation',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Google Location of the Venue',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: locationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Thumbnail (Upload Images)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: thumbnailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Source',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: sourceController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Logic to handle upload button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('Upload', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YouTube Link',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: youtubeLinkController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                handleFinishButtonClick();
               // showShareInvitationPopup();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Continue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:peg/Presentation/HomeScreen/homeScreen.dart';
// import 'package:peg/Presentation/InvitationPreviewPage/invitationPreviewPage.dart';
// import 'package:peg/Presentation/NewCreatePegScreenUsingTemplate/newCreatePegScreenUsingTemplate.dart';
//
// class CreatePegScreen extends StatefulWidget {
//   @override
//   _CreatePegScreenState createState() => _CreatePegScreenState();
// }
//
// class _CreatePegScreenState extends State<CreatePegScreen> {
//   // Define controllers for text fields
//   TextEditingController pegNameController = TextEditingController();
//   TextEditingController pegTypeController = TextEditingController();
//   TextEditingController dateController = TextEditingController();
//   TextEditingController timeController = TextEditingController();
//   TextEditingController messageController = TextEditingController();
//   TextEditingController locationController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//
//   // Define variable to track selected option for Open/Restricted
//   String openRestrictedOption = 'Open';
//
//   // Function to handle finish button click
//   void handleFinishButtonClick() {
//     // Logic to handle finishing and sharing the invitation
//     // You can implement this based on your requirements
//     // For now, let's just print the entered details
//     print('PEG Name: ${pegNameController.text}');
//     print('Open/Restricted: $openRestrictedOption');
//     print('PEG Type: ${pegTypeController.text}');
//     print('Date: ${dateController.text}');
//     print('Time: ${timeController.text}');
//     print('Message: ${messageController.text}');
//     print('Location: ${locationController.text}');
//     print('Address: ${addressController.text}');
//   }
//
//   // Function to show share invitation pop-up
//   void showShareInvitationPopup() {
//     // Logic to show pop-up with share options
//     // You can implement this using showDialog()
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Share Invitation'),
//           content: Text('Share now or later?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 // Logic for sharing invitation now
//                 // Replace with your implementation
//                 Navigator.pop(context); // Close pop-up
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => InvitationPreviewPage()));
//               },
//               child: Text('Share Now'),
//             ),
//             TextButton(
//               onPressed: () {
//                 // Logic for sharing invitation later
//                 // Replace with your implementation
//                 Navigator.pop(context);// Close pop-up
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//               },
//               child: Text('Share Later'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   // Function to show date picker
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null && picked != dateController.text) {
//       setState(() {
//         // Format the picked date as dd/mm/yy
//         dateController.text =
//         "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year.toString().substring(2)}";
//       });
//     }
//   }
//
//   // Function to show time picker
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//     if (picked != null) {
//       setState(() {
//         // Format the picked time as HH:mm
//         timeController.text = picked.format(context);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create PEG'),
//         backgroundColor: Color.fromRGBO(0, 252, 206, 30),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Choose PEG Template',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 fontFamily: 'Comfortaa',
//               ),
//             ),
//             SizedBox(height: 20),
//             CarouselSlider(
//               options: CarouselOptions(
//                 height: 220,
//                 aspectRatio: 1,
//                 viewportFraction: 0.9,
//                 initialPage: 0,
//                 enableInfiniteScroll: true,
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 3),
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//               ),
//               items: [
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Design.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Design',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Design',templateType: 'Category',imagePath: 'assets/Design.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Programmer.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Programmer',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Programmer',templateType: 'Category',imagePath: 'assets/Programmer.png') ));
//
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Finance.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Finance',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Finance',templateType: 'Category',imagePath: 'assets/Finance.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/SoftSkills.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Soft Skills',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Soft Skills', templateType: 'Category',imagePath: 'assets/SoftSkills.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Accounting.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Accountancy',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Accountancy', templateType: 'Category',imagePath: 'assets/Accounting.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/DataScience.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Data Science',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateType: 'Data Science', templateName: 'Category',imagePath: 'assets/DataScience.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Language.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Language',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Language', templateType: 'Category',imagePath: 'assets/Language.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Mk.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Marketing',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Marketing', templateType: 'Category',imagePath: 'assets/Mk.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 300,
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the image vertically
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25), // Adjusted horizontal padding
//                         child: Image.asset(
//                           'assets/Creative.png',
//                           height: 140,
//                           width: 250, // Adjusted width for all images
//                           fit: BoxFit.cover, // Maintain aspect ratio
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Custom',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Comfortaa',
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Add functionality here
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => NewCreatePegScreenUsingTemplate(templateName: 'Custom', templateType: 'Category',imagePath: 'assets/Creative.png') ));
//                               },
//                               child: Text('Use'),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//                 // Add more templates as needed
//               ],
//             ),
//             SizedBox(height: 20),
//             Text('Or', style: TextStyle(
//                 fontFamily: 'Comfortaa',
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold
//             ),textAlign: TextAlign.center,),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: pegNameController,
//               decoration: InputDecoration(
//                 labelText: 'PEG Name',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             DropdownButtonFormField(
//               value: openRestrictedOption,
//               onChanged: (String? value) {
//                 setState(() {
//                   openRestrictedOption = value!;
//                 });
//               },
//               items: ['Open', 'Restricted'].map((String option) {
//                 return DropdownMenuItem(
//                   value: option,
//                   child: Text(option),
//                 );
//               }).toList(),
//               decoration: InputDecoration(
//                 labelText: 'Open/Restricted (Free/Paid)',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () => _selectDate(context),
//                     child: AbsorbPointer(
//                       child: TextFormField(
//                         controller: dateController,
//                         decoration: InputDecoration(
//                           labelText: 'Date',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           prefixIcon:
//                           Icon(Icons.calendar_today), // Add calendar icon
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 16.0),
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () => _selectTime(context),
//                     child: AbsorbPointer(
//                       child: TextFormField(
//                         controller: timeController,
//                         decoration: InputDecoration(
//                           labelText: 'Time',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           prefixIcon:
//                           Icon(Icons.access_time), // Add clock icon
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: pegTypeController,
//               decoration: InputDecoration(
//                 labelText: 'PEG Type (Category)',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: messageController,
//               decoration: InputDecoration(
//                 labelText: 'Message to be displayed on the invitation',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: locationController,
//               decoration: InputDecoration(
//                 labelText: 'Google Location of the Venue',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: addressController,
//               decoration: InputDecoration(
//                 labelText: 'Venue Address',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 handleFinishButtonClick();
//                 showShareInvitationPopup();
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromRGBO(0, 252, 206, 30),
//                 padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Text('Finish',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
