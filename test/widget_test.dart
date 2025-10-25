import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate_app/main.dart';

void main() {
  testWidgets('Splash screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(RealEstateApp());

    // Check that Splash text appears
    expect(find.text('🏠 Real Estate App'), findsOneWidget);
  });
}
