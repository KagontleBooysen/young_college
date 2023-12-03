import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_link2.dart';


void main() {
  testWidgets('Image widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: LinkActivity2(),
      ),
    );

    expect(find.byType(Image), findsOneWidget);

    final imageWidget = tester.widget<Image>(find.byType(Image));
    expect(imageWidget.width, 350.0);
    expect(imageWidget.height, 350.0);
  });

  testWidgets('checking the presence of LinkActivity2 widget...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LinkActivity2()));
    await tester.pump();

    expect(find.byType(LinkActivity2), findsOneWidget); 
  });


  testWidgets('checking the text video ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LinkActivity2()));
    await tester.pump();

     expect(find.text("Video Chat Link Sent!"), findsOneWidget); 
  });


testWidgets('checking the text notification ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LinkActivity2()));
    await tester.pump();

     expect(find.text("The student just received a notification and the link is not available for them."), findsOneWidget); 
  });

}



class LinkActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('images/new.png'),
          width: 350.0,
          height: 350.0,
        ),
        SizedBox(height: 16.0),
        Text(
          "Video Chat Link Sent!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          "The student just received a notification and the link is not available for them.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
