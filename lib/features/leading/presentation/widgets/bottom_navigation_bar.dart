import 'package:flutter/material.dart';
import 'package:movies_ducr/features/maps/presentation/page/maps_page.dart';
import 'package:movies_ducr/features/movies/presentation/page/movies_page.dart';
import 'package:movies_ducr/features/profile/presentation/presentation/profile_page.dart';

class MoviesBottomNavigationBar extends StatefulWidget {
  final int posicion;
  const MoviesBottomNavigationBar({super.key, required this.posicion});

  @override
  State<MoviesBottomNavigationBar> createState() => _MoviesBottomNavigationBarState();
}

class _MoviesBottomNavigationBarState extends State<MoviesBottomNavigationBar> {
  late int posicion = widget.posicion;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Peliculas'),
      BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa')
    ],
    onTap: (index) async{
      switch (index) {
        case 0:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => (ProfilePage())),
        );
        posicion = index;
        break;
        case 1:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => (MoviesPage())),
        );
        posicion = index;
        break;
        case 2:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => (MapsPage())),
        );
        posicion = index;
        break;
      }
    },
    currentIndex: widget.posicion,);
  }
}