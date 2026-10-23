import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        color: const Color.fromARGB(255, 26, 32, 50),
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(movie.posterPath,
                        width: 80, height: 120, fit: BoxFit.cover),
                    const SizedBox(width: 16),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movie.title,
                            style: const TextStyle(
                              fontSize: 18,
                              color: cinemaBrand,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(height: 8),
                        Text(
                          movie.synopsis,
                          style: const TextStyle(color: cinemaFontWhite),
                        )
                      ],
                    ))
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(movie.formattedPrice,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MovieListing(movie: movie);
                        }));
                      },
                      child: const Text('BOOK NOW'),
                    ),
                  ],
                )
              ],
            )));
  }
}
