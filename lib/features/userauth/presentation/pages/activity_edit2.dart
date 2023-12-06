import 'package:flutter/material.dart';

class EditActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Profile"),
        backgroundColor: Colors.blue, // Set the app bar background color
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16.0),
                Text(
                  "Edit Profile",
                  key: Key("edit profile1"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Profile Picture",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8, // Adjust container width as needed
                  height: 220.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0), // Add border as needed
                  ),
                  child: Center(
                    child: Text(
                      "Choose Photo",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Column( // Wrap Full Name label and input field in a Column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8, // Adjust container width as needed
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter full name...",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column( // Wrap Email label and input field in a Column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8, // Adjust container width as needed
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter email...",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/link');
                    // Add your save logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Customize the button color
                    onPrimary: Colors.white, // Customize the text color
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50.0), // Increase width and height
                  ),
                  child: Text("Save"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EditActivity2(),
  ));
}