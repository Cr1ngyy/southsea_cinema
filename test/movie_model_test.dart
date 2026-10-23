import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance wiht given properties', () {
      const movie = Movie(
          id: 'seven',
          title: 'Seven',
          synopsis:
              'Crime thriller, 2 detectives find themselves tracking down a genuis serial killer',
          age: '15',
          runtime: '2hrs',
          ticketPrice: 5,
          posterPath: 'assets/images/sinners.jpeg');

      expect(movie.id, 'seven');
      expect(movie.title, 'Seven');
      expect(movie.synopsis,
          'Crime thriller, 2 detectives find themselves tracking down a genuis serial killer');
      expect(movie.age, '15');
      expect(movie.runtime, '2hrs');
      expect(movie.ticketPrice, 5);
      expect(movie.posterPath, 'assets/images/sinners.jpeg');
    });

    test('formattedPrice returns price formatted correctly', () {
      const movie = Movie(
          id: 'seven',
          title: 'Seven',
          synopsis:
              'Crime thriller, 2 detectives find themselves tracking down a genuis serial killer',
          age: '15',
          runtime: '2hrs',
          ticketPrice: 5,
          posterPath: 'assets/images/sinners.jpeg');

      expect(movie.formattedPrice, '£5.00');
    });
  });
}
