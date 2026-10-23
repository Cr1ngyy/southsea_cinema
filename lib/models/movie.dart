class Movie {
  final String id;
  final String title;
  final String synopsis;
  final String age;
  final String runtime;
  final double ticketPrice;
  final String posterPath;

  const Movie(
      {required this.id,
      required this.title,
      required this.synopsis,
      required this.age,
      required this.runtime,
      required this.ticketPrice,
      required this.posterPath});

  String get formattedPrice => '£${ticketPrice.toStringAsFixed(2)}';
}
