import 'package:flutter/material.dart';

import 'package:movie_app/data/movie_data.dart';
import 'package:movie_app/widgets/movie_section.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = genreMovies.entries.toList();

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF141414),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Genres',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 24),
        physics: const BouncingScrollPhysics(),
        itemCount: genres.length,
        itemBuilder: (context, index) {
          final genre = genres[index];
          return MovieSection(title: genre.key, movies: genre.value);
        },
      ),
    );
  }
}
