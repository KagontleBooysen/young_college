import 'package:flutter/material.dart';

void main() {
  runApp(vision());
}

class vision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YoungandCapable'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo Image
            Image.asset(
              'images/no class.png', // replace 'logo.png' with your image file
              width: 250, // adjust the width as needed
              height: 250, // adjust the height as needed
            ),

            SizedBox(height: 20),

            // Text: 'No Scheduled Classes'
            Text(
              'No Scheduled Classes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Text: 'You haven't requested to take a class yet...'
            Text(
              'You haven\'t requested to take a class yet... find a class and schedule a time to take it!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            SizedBox(height: 20),
            

             Container(
              width: 200, // Set the width as needed
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Find a Class'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Teach',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
  
        }, // Navigate to '/act' under 'Learn' tab
      ),
    );
  }
}
