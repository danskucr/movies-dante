import 'package:flutter/material.dart';

class MoviesNavigationBar extends StatefulWidget {
  final int posicion;
  const MoviesNavigationBar({super.key, required this.posicion});

  @override
  State<MoviesNavigationBar> createState() => _MoviesNavigationBarState();
}

class _MoviesNavigationBarState extends State<MoviesNavigationBar> {
  late int posicion = widget.posicion;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.person)),
      BottomNavigationBarItem(icon: Icon(Icons.movie)),
      BottomNavigationBarItem(icon: Icon(Icons.map))
    ],
    // onTap: (index) async{
    //   switch (index) {
    //     case 0:
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(
    //         builder: (context) => ()),
    //     );
    //     posicion = index;
    //     break;
    //     case 1:
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(
    //         builder: (context) => ()),
    //     );
    //     posicion = index;
    //     break;
    //     case 2:
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(
    //         builder: (context) => ()),
    //     );
    //     posicion = index;
    //     break;
    //   }
    // },
    currentIndex: widget.posicion,);
  }
}