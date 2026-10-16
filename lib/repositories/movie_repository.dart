import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(id: 'sinners', title: 'Sinners', synopsis: 'Vampire thriller set in 1920s Louisana', age: '15', runtime: '2hrs 0m', ticketPrice: 7.5, posterPath: 'assets/images/sinners.jpeg'),
      Movie(id: 'walle', title: 'Wall-e', synopsis: 'Robotic Adventure set in the far future', age: 'PG', runtime: '1hrs 30m', ticketPrice: 5, posterPath: 'assets/images/walle.jpeg')
    ];
  }
}