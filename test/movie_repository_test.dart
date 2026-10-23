import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns 2 movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();
      final Movie? movie = repository.getMovieById('sinners');


      expect(movie, isNotNull);
      expect(movie?.title, 'Sinners');
      expect(movie?.ticketPrice, 7.50);
    });

    test('getMovieById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });


  });
}