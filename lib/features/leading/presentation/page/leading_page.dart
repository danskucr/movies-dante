import 'package:flutter/material.dart';
import 'package:movies_ducr/features/maps/presentation/page/maps_page.dart';
import 'package:movies_ducr/features/movies/presentation/page/movies_page.dart';
import 'package:movies_ducr/features/profile/presentation/presentation/profile_page.dart';

class LeadingPage extends StatefulWidget {
  const LeadingPage({super.key});

  @override
  State<LeadingPage> createState() => _LeadingPageState();
}

class _LeadingPageState extends State<LeadingPage> {
  int position = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    MoviesPage(),
    MapsPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      position = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(position),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Peliculas'),
      BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa')
    ],
    onTap: _onItemTapped,
    currentIndex: position,), 
    );
  }
}