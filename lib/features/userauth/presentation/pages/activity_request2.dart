import 'package:flutter/material.dart';

class RequestActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RequestActivity2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Header with Background
            Container(
              color: Color(0xFFB2B4B8B8),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  // Class Name Heading
                  Text(
                    'Class Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Form Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Full Name
                  Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Requested Created Date
                  Text(
                    'Requested Created Date',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  // Requested Time
                  Text(
                    'Requested Time',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Requested Class Date
                  Text(
                    'Requested Class Date',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0), // Increased space between "Full Name" and "Requested Class Date"
                  // Please Add a Video Meeting Link
                  Text(
                    'Please Add a Video Meeting Link',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Link
                  Text(
                    'Link',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  // Video Meeting Link Input
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enterlink...',
                    ),
                  ),
                  SizedBox(height: 30.0),
                  // Centered and Widened Button
                  Center(
                    child: SizedBox(
                      width: 200.0, // Increase the button width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your book button logic here
                        },
                        child: Text(
                          'Book',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
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

void main() {
  runApp(MaterialApp(
    home: RequestActivity2(),
  ));
}