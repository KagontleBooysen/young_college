import 'package:flutter/material.dart';

void main() {
  runApp(now());
}

class now extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Edit My Class"),
          centerTitle: true, // Center the title
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: ClassEditForm(),
        ),
      ),
    );
  }
}

class ClassEditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Class Type"),
            DropdownButton(
              onChanged: (value) {
                // Handle dropdown selection
              },
              items: [
                DropdownMenuItem(
                  value: "Option 1",
                  child: Text("Option 1"),
                ),
                DropdownMenuItem(
                  value: "Option 2",
                  child: Text("Option 2"),
                ),
              ],
              hint: Text("Select Class Type..."), // Hint for dropdown
              value: null, // Set value to null to hide the text
            ),

            SizedBox(height: 10.0), // Increase spacing

            Text("Class Name"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Class Name",
              ),
            ),

            // ... (Repeat the pattern for other sections)

            SizedBox(height: 10.0), // Increase spacing

            Center(
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, '/upvision');  
                  // Handle update class action
                },
                child: Text("Update Class"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
