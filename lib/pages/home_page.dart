import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../widgets/hero_carousel.dart';
import '../widgets/movie_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF141414),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Now Playing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),

            // Top Hero Carousel
            HeroCarousel(movies: nowPlayingMovies),

            const SizedBox(height: 12),

            // Trending Section
            MovieSection(title: 'Trending', movies: trendingMovies),

            // Popular Section
            MovieSection(title: 'Popular', movies: popularMovies),

            // Top Rated Section
            MovieSection(title: 'Top Rated', movies: topRatedMovies),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
