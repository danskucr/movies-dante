import 'package:flutter/material.dart';
import 'package:movies_ducr/features/leading/presentation/widgets/bottom_navigation_bar.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('MAPS'),
      bottomNavigationBar: MoviesBottomNavigationBar(posicion: 2),
    );
  }
}