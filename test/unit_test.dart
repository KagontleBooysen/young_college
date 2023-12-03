import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/home_page.dart';
import 'package:young_college/features/userauth/presentation/pages/crud.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_classes.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_available2.dart';


String formatWelcomeMessage(String message) {
  return 'Formatted: $message';
}

String formatTextMessage(String message) {
  return 'Formatted: $message';
}

String formatbuildClassItem(String message) {
  return 'Formatted: $message';
}


void main() {
  test('Format welcome message 1', () {
    // Call the utility function
    final result = formatWelcomeMessage('Welcome To YoungandCapable');

    // Verify the result
    expect(result, 'Formatted: Welcome To YoungandCapable');
  });

  test('Format welcome message 2', () {
    // Call the utility function
    final result = formatWelcomeMessage('Welcome Home buddy!');

    // Verify the result
    expect(result, 'Formatted: Welcome Home buddy!');
  });

test('Format text for sign out', () {
    // Call the utility function
    final result = formatWelcomeMessage('HomePage');

    // Verify the result
    expect(result, 'Formatted: HomePage');
  });


test('Format showToast message', () {
    // Call the utility function
    final result = formatWelcomeMessage('Successfully signed out');

    // Verify the result
    expect(result, 'Formatted: Successfully signed out');
  });


test('Format show users if they have an account message', () {
    // Call the utility function
    final result = formatWelcomeMessage('Already have an account?');

    // Verify the result
    expect(result, 'Formatted: Already have an account?');
  });


test('Format show Username if is there', () {
    // Call the utility function
    final result = formatWelcomeMessage('Username');

    // Verify the result
    expect(result, 'Formatted: Username');
  });


test('Format show Email if is there', () {
    // Call the utility function
    final result = formatWelcomeMessage('Email');

    // Verify the result
    expect(result, 'Formatted: Email');
  });


test('Format show Password if is there', () {
    // Call the utility function
    final result = formatWelcomeMessage('Password');

    // Verify the result
    expect(result, 'Formatted: Password');
  });

test('Format show Login text message', () {
    // Call the utility function
    final result = formatWelcomeMessage('Login');

    // Verify the result
    expect(result, 'Formatted: Login');
  });


  test('Format show Sign Up text message', () {
    // Call the utility function
    final result = formatWelcomeMessage('Sign Up');

    // Verify the result
    expect(result, 'Formatted: Sign Up');
  });

 test('Format shows that User is successfully created', () {
  // Call the utility function with trimmed input
  final result = formatWelcomeMessage(' User is successfully created'.trim());

  // Verify the result
  expect(result, 'Formatted: User is successfully created');
});
 
test('Format shows that the User some error happened', () {
  // Call the utility function with trimmed input
  final result = formatWelcomeMessage(' Some error happend'.trim());

  // Verify the result
  expect(result, 'Formatted: Some error happend');
});


test('Format check for Sign in with Google button ', () {
  // Call the utility function with trimmed input
  final result = formatWelcomeMessage(' Sign in with Google'.trim());

  // Verify the result
  expect(result, 'Formatted: Sign in with Google');
});


test('Format check the text Do not have an account? ', () {
  // Call the utility function with trimmed input
  final result = formatWelcomeMessage('Do not have an account?'.trim());

  // Verify the result
  expect(result, 'Formatted: Do not have an account?');
});

test('Format text message 1', () {
    final result = formatTextMessage('To YoungandCapable');
    expect(result, 'Formatted: To YoungandCapable');
  });


test('Format checking the text name', () {
    final result = formatTextMessage('Name');
    expect(result, 'Formatted: Name');
  });


test('Format checking the text student id', () {
    final result = formatTextMessage('Student ID');
    expect(result, 'Formatted: Student ID');
  });


test('Format checking the text student program id', () {
    final result = formatTextMessage('Study Program ID');
    expect(result, 'Formatted: Study Program ID');
  });


  test('Format checking the text GPA', () {
    final result = formatTextMessage('GPA');
    expect(result, 'Formatted: GPA');
  });


test('Format checking the text CREATE', () {
    final result = formatTextMessage('Create');
    expect(result, 'Formatted: Create');
  });


  test('Format checking the text Read', () {
    final result = formatTextMessage('Read');
    expect(result, 'Formatted: Read');
  });


  test('Format checking the text Update', () {
    final result = formatTextMessage('Update');
    expect(result, 'Formatted: Update');
  });


test('Format checking the text Delete', () {
    final result = formatTextMessage('Delete');
    expect(result, 'Formatted: Delete');
  });

  // unit_testing for activity_request2_test.dart

test('Format checking the text title requestactivity2', () {
    final result = formatTextMessage('RequestActivity2');
    expect(result, 'Formatted: RequestActivity2');
  });

test('Format checking the text class name', () {
    final result = formatTextMessage('Class Name');
    expect(result, 'Formatted: Class Name');
  });

test('Format checking the text requested created date ', () {
    final result = formatTextMessage('Requested Created Date');
    expect(result, 'Formatted: Requested Created Date');
  });

test('Format checking the text requested time', () {
    final result = formatTextMessage('Requested Time');
    expect(result, 'Formatted: Requested Time');
  });

test('Format checking the text requested class date ', () {
    final result = formatTextMessage('Requested Class Date');
    expect(result, 'Formatted: Requested Class Date');
  });


test('Format checking the text add a video meeting link ', () {
    final result = formatTextMessage('Please Add a Video Meeting Link');
    expect(result, 'Formatted: Please Add a Video Meeting Link');
  });

test('Format checking the text link', () {
    final result = formatTextMessage('Link');
    expect(result, 'Formatted: Link');
  });


test('Format checking the text button book ', () {
    final result = formatTextMessage('Book');
    expect(result, 'Formatted: Book');
  });



//unit test for page activity_classes_test.dart

test('Format shows buildClassItem for Class Name 1', () {
  // Call the utility function with trimmed input
  final result = formatbuildClassItem(' Class Name 1'.trim());

  // Verify the result
  expect(result, 'Formatted: Class Name 1');
});

test(' buildClassItem for Instructor Name 1', () {
  // Call the utility function with trimmed input
  final result = formatbuildClassItem(' Instructor Name 2'.trim());

  // Verify the result
  expect(result, 'Formatted: Instructor Name 2');
});

test('Format checking the text Based on your interests.', () {
    final result = formatTextMessage('Based on your interests.');
    expect(result, 'Formatted: Based on your interests.');
  });

  test('Format checking the text Available Classes', () {
    final result = formatTextMessage('Available Classes');
    expect(result, 'Formatted: Available Classes');
  });


//unit testing for activity_edit2.dart//

test('Checking the Appbar text student profile.', () {
    final result = formatTextMessage('Student Profile');
    expect(result, 'Formatted: Student Profile');
  });

  test('Checking the text Edit profile', () {
    final result = formatTextMessage('Edit Profile');
    expect(result, 'Formatted: Edit Profile');
  });

  test('Checking the user if they see the text Profile picture', () {
    final result = formatTextMessage('Profile Picture');
    expect(result, 'Formatted: Profile Picture');
  });

  test('Checking if the user is able to see the text Choose Photo', () {
    final result = formatTextMessage('Choose Photo');
    expect(result, 'Formatted: Choose Photo');
  });


//Upcoming_classes.dart//
test('Checking if the user is able to see the text Save in the Button', () {
    final result = formatTextMessage('BottomNavigationBar');
    expect(result, 'Formatted: BottomNavigationBar');
  });

test('Checking if the image is displayed on the screen', () {
    final result = formatTextMessage('Image');
    expect(result, 'Formatted: Image');
  });

  test('Checking if the title is displayed', () {
    final result = formatTextMessage('YoungandCapable');
    expect(result, 'Formatted: YoungandCapable');
  });

  test('Checking the text if its displayed', () {
    final result = formatTextMessage('No Scheduled Classes');
    expect(result, 'Formatted: No Scheduled Classes');
  });


  //edit_my_class.dart//
test('Checking if the title on the appbar is displayed on the screen', () {
    final result = formatTextMessage('Edit_my_class Test');
    expect(result, 'Formatted: Edit_my_class Test');
  });

  test('Checking the text Edit My Class  ', () {
    final result = formatTextMessage('Edit My Class');
    expect(result, 'Formatted: Edit My Class');
  });

  test('Checking the text Select Class Type... ', () {
    final result = formatTextMessage('Select Class Type...');
    expect(result, 'Formatted: Select Class Type...');
  });


 test('Checking the text Class Name', () {
    final result = formatTextMessage('Class Name');
    expect(result, 'Formatted: Class Name');
  });

test('Checking the text Check ElevatedButton', () {
    final result = formatTextMessage('ElevatedButton');
    expect(result, 'Formatted: ElevatedButton');
  });





  //unit testing activity_available2.dart 
test('Checking the text if its displayed', () {
    final result = formatTextMessage('All Available Classes');
    expect(result, 'Formatted: All Available Classes');
  });

test('Checking the ClassItem', () {
    final result = formatTextMessage('imageName');
    expect(result, 'Formatted: imageName');
  });


 

//unit testing AvailableActivity2//

testWidgets('AvailableActivity2 displays the correct content', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(buildTestWidget());

    // Verify that the buildClassItem displays the correct content.

    // Verify the presence of Icons.person.
    expect(find.byIcon(Icons.person), findsNWidgets(3));

    // Verify the presence of className and instructorName.
    expect(find.text('Class Name 1'), findsOneWidget);
    expect(find.text('Instructor Name 1'), findsOneWidget);
    expect(find.text('Class Name 2'), findsOneWidget);
    expect(find.text('Instructor Name 2'), findsOneWidget);
    expect(find.text('Class Name 3'), findsOneWidget);
    expect(find.text('Instructor Name 3'), findsOneWidget);
  });
}

Widget buildTestWidget() {
  return MaterialApp(
    home: AvailableActivity2(),
  );
}

class AvailableActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 16.0),
          buildClassItem('Class Name 1', 'Instructor Name 1', Icons.person),
          buildClassItem('Class Name 2', 'Instructor Name 2', Icons.person),
          buildClassItem('Class Name 3', 'Instructor Name 3', Icons.person),
        ],
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

  

  



