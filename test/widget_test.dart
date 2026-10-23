// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
// import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/screens/menu_screen.dart';

void main () {
  group('App tests', () {
    testWidgets('App displays screens', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(MenuScreen), findsOneWidget);
      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

    testWidgets('Tapping Order Now button navigates to MovieListing with formatted page', 
    (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      await tester.tap(find.text('BOOK NOW').first);
      await tester.pumpAndSettle();

    });
  });
}
