import 'package:flutter/material.dart';
import 'package:movies_ducr/features/leading/presentation/widgets/bottom_navigation_bar.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Peliculas'),
      bottomNavigationBar: MoviesBottomNavigationBar(posicion: 1),
    );
  }
}