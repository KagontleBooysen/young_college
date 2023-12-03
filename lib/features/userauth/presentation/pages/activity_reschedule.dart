import 'package:flutter/material.dart';

class LinkActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 180, 180), // Set background color to red
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/new.png', 
              width: 400.0,
              height: 400.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Reschedule Sent!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'The student just received a notification and the link is not available for them.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 32.0),
            SizedBox(
              width: 200.0, // Increase button width
              child: ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Change the button color as needed
                ),
                child: Text(
                  'GOT IT!',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
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
    home: LinkActivity2(),
  ));
}