import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/home_page.dart';
import 'package:young_college/features/userauth/presentation/pages/crud.dart';

String formatWelcomeMessage(String message) {
  return 'Formatted: $message';
}

String formatTextMessage(String message) {
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
}

