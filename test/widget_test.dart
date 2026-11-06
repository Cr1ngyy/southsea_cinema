import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/screens/menu_screen.dart';
import 'package:southsea_cinema/views/movie_listing.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main () {
  group('App tests', () {
    final testMovie = Movie(
    id: 'test',
    title: 'Southsea Cinema Room',
    synopsis: 'A test movie',
    age: 'PG',
    runtime: '1hr',
    ticketPrice: 10.00,
    posterPath: 'assets/test.png',
  );

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

      expect(find.byType(MovieListing), findsOneWidget);
      expect(find.text('Order Ticket(s)'), findsOneWidget);
      
    });
  });
}
