import 'package:flutter/material.dart';
import 'package:peg/Presentation/HomeScreen/homeScreen.dart';
import 'package:peg/Presentation/InvitationPreviewPage/invitationPreviewPage.dart';

class NewCreatePegScreenUsingTemplate extends StatefulWidget {
  final String templateName;
  final String templateType;
  final String imagePath;

  NewCreatePegScreenUsingTemplate({required this.templateName, required this.templateType,required this.imagePath,});

  @override
  _NewCreatePegScreenUsingTemplateState createState() =>
      _NewCreatePegScreenUsingTemplateState();
}

class _NewCreatePegScreenUsingTemplateState
    extends State<NewCreatePegScreenUsingTemplate> {

  // Define controllers for text fields
  TextEditingController pegNameController = TextEditingController();
  TextEditingController pegTypeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  // Define variable to track selected option for Open/Restricted
  String openRestrictedOption = 'Open';


  // Function to handle finish button click
  void handleFinishButtonClick() {
    // Logic to handle finishing and sharing the invitation
    // You can implement this based on your requirements
    // For now, let's just print the entered details
    print('PEG Name: ${pegNameController.text}');
    print('Open/Restricted: $openRestrictedOption');
    print('PEG Type: ${pegTypeController.text}');
    print('Date: ${dateController.text}');
    print('Time: ${timeController.text}');
    print('Message: ${messageController.text}');
    print('Location: ${locationController.text}');
    print('Address: ${addressController.text}');
  }

  // Function to show share invitation pop-up
  void showShareInvitationPopup() {
    // Logic to show pop-up with share options
    // You can implement this using showDialog()
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Share Invitation'),
          content: Text('Share now or later?'),
          actions: [
            TextButton(
              onPressed: () {
                // Logic for sharing invitation now
                // Replace with your implementation
                Navigator.pop(context);// Close pop-up
                Navigator.push(context, MaterialPageRoute(builder: (context) => InvitationPreviewPage()));
              },
              child: Text('Share Now'),
            ),
            TextButton(
              onPressed: () {
                // Logic for sharing invitation later
                // Replace with your implementation
                Navigator.pop(context); // Close pop-up
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Share Later'),
            ),
          ],
        );
      },
    );
  }

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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Choose your border color
                    width: 2, // Choose your border width
                  ),
                  borderRadius: BorderRadius.circular(8), // Choose your border radius
                ),
                child: Image.asset(
                  widget.imagePath, // Use imagePath parameter here
                  height: 140,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 20),
            // Add other form fields here
            TextFormField(
              controller: pegNameController,
              decoration: InputDecoration(
                labelText: 'PEG Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField(
              value: openRestrictedOption,
              onChanged: (String? value) {
                setState(() {
                  openRestrictedOption = value!;
                });
              },
              items: ['Open', 'Restricted'].map((String option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Open/Restricted (Free/Paid)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _selectDate(context),
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: dateController,
                        decoration: InputDecoration(
                          labelText: 'Date',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon:
                          Icon(Icons.calendar_today), // Add calendar icon
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _selectTime(context),
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: timeController,
                        decoration: InputDecoration(
                          labelText: 'Time',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon:
                          Icon(Icons.access_time), // Add clock icon
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextFormField(
              initialValue: widget.templateName, // Set initial value to template name
              readOnly: true, // Make the field read-only
              decoration: InputDecoration(
                labelText: 'PEG Type (Category)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            //
            // TextFormField(
            //   controller: pegTypeController,
            //   decoration: InputDecoration(
            //     labelText: 'PEG Type (Category)',
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //     ),
            //   ),
            // ),
            SizedBox(height: 10),
            TextFormField(
              controller: messageController,
              decoration: InputDecoration(
                labelText: 'Message to be displayed on the invitation',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Google Location of the Venue',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Venue Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                handleFinishButtonClick();
                showShareInvitationPopup();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(0, 252, 206, 30),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Finish',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}

