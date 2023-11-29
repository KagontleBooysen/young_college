import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String studentName = "";
  String studentID = "";
  String studyProgramID = "";
  double studentGPA = 0.0;

  void getStudentName(String name) {
    setState(() {
      studentName = name;
    });
  }

  void getStudentID(String id) {
    setState(() {
      studentID = id;
    });
  }

  void getStudyProgramID(String programID) {
    setState(() {
      studyProgramID = programID;
    });
  }

  void getStudentGPA(String gpa) {
    setState(() {
      studentGPA = double.parse(gpa);
    });
  }

  Future<void> createData() async {
    DocumentReference documentReference = FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

    // Create a map for the student data
    Map<String, dynamic> students = {
      "studentName": studentName,
      "studentID": studentID,
      "studyProgramID": studyProgramID,
      "studentGPA": studentGPA
    };

    await documentReference.set(students).whenComplete(() {
      print("$studentName created");
    });
  }

  readData() {
  DocumentReference documentReference =
      FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

  documentReference.get().then((datasnapshot) {
    if (datasnapshot.exists) {
      Map<String, dynamic>? data = datasnapshot.data() as Map<String, dynamic>?;
      if (data != null) {
        print("Student Data:");
        print("Name: ${data["studentName"]}");
        print("Student ID: ${data["studentID"]}");
        print("Study Program ID: ${data["studyProgramID"]}");
        print("GPA: ${data["studentGPA"]}");
      } else {
        print("Data is null.");
      }
    } else {
      print("$studentName does not exist.");
    }
  });
}

Future<void> updateData() async {
  DocumentReference documentReference = FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

  Map<String, dynamic> updatedData = {
    "studentID": studentID,
    "studyProgramID": studyProgramID,
    "studentGPA": studentGPA,
  };

  try {
    await documentReference.update(updatedData);
    print("$studentName updated");
  } catch (error) {
    print("Error updating data: $error");
  }
}


Future<void> deleteData() async {
  DocumentReference documentReference = FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

  try {
    await documentReference.delete();
    print("$studentName deleted");
  } catch (error) {
    print("Error deleting data: $error");
  }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("YoungandCapable"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                  onChanged: (String name) {
                    getStudentName(name);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                  onChanged: (String id) {
                    getStudentID(id);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Study Program ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                  onChanged: (String programID) {
                    getStudyProgramID(programID);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "GPA",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                  onChanged: (String gpa) {
                    getStudentGPA(gpa);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    onPressed: () {
                      createData();
                    },
                    child: Text("Create"),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    onPressed: () {
                      readData();
                    },
                    child: Text("Read"),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    onPressed: () {
                      updateData();
                    },
                    child: Text("Update"),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    onPressed: () {
                      deleteData();
                    },
                    child: Text("Delete"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}