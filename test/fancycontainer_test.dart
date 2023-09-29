import 'package:fancy_container_lib/fancy_container_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FancyContainer widget test', (WidgetTester tester) async {
    // Build a FancyContainer widget
    await tester.pumpWidget(
      MaterialApp(
        home: FancyContainerLib(
          title: 'Test Title',
          textColor: Colors.white,
        ),
      ),
    );

    // Find the text widget with the test title
    final textWidget = find.text('Test Title');

    // Verify that the widget is displayed
    expect(textWidget, findsOneWidget);

    // Verify the text style
    final textStyle = tester.widget<Text>(textWidget).style;
    expect(textStyle?.color, Colors.white);
    expect(textStyle?.fontSize, 20.0);
    expect(textStyle?.fontWeight, FontWeight.bold);
  });
}
