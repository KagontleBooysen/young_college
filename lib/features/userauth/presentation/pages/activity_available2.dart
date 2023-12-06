import 'package:flutter/material.dart';

class AvailableActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Available Classes"),
        backgroundColor: Color(0xFFE9ECEF),
        actions: [
          // Add any app bar actions here
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Available Classes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Based on your interests.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF888888),
                ),
              ),
            ),
            ClassItem(
              imageName: 'images/no class.png',
              className: 'Class Name 1',
              instructorName: 'Instructor Name 1',
            ),
            ClassItem(
              imageName: 'yg',
              className: 'Class Name 2',
              instructorName: 'Instructor Name 2',
            ),
            ClassItem(
              imageName: 'planning',
              className: 'Class Name 3',
              instructorName: 'Instructor Name 3',
            ),
            SizedBox(height: 16),
            Center(
              child: Container(
                width: 400,
                child:ElevatedButton(
              onPressed: () {
  
              },
              child: Text("SEE ALL CLASSES"),
            ),
            ),
           ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFE9ECEF),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.class_),
              onPressed: () {
                // Handle Classes button press
              },
            ),
            Text("Classes"),
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                // Handle Learn button press
              },
            ),
            Text("Learn"),
            IconButton(
              icon: Icon(Icons.school),
              onPressed: () {
                // Handle Teach button press
              },
            ),
            Text("Teach"),

            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Handle Profile button press
              },
            ),
            Text("Profile"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.pushNamed(context, '/class');
          // Handle the floating action button press
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ClassItem extends StatelessWidget {
  final String imageName;
  final String className;
  final String instructorName;

  ClassItem({
    required this.imageName,
    required this.className,
    required this.instructorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            child: Image.asset(
              'images/no class.png',
            // Assuming your images are in the assets folder
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  className,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  instructorName,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF888888),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 24,
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
