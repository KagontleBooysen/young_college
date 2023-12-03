import 'package:flutter/material.dart';

class AvailableActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to red
      appBar: AppBar(
        backgroundColor: Color(0xFFE9ECEF), // Set app bar background color
        title: Text(
          'All Available Classes',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Available Classes',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Based on your interests.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 16.0),
            buildClassItem('Class Name 1', 'Instructor Name 1', Icons.person),
            buildClassItem('Class Name 2', 'Instructor Name 2', Icons.person),
            buildClassItem('Class Name 3', 'Instructor Name 3', Icons.person),
          ],
        ),
      ),
    );
  }

  Widget buildClassItem(String className, String instructorName, IconData iconData) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            size: 80.0,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  className,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  instructorName,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AvailableActivity2(),
  ));
}