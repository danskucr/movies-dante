import 'package:flutter/material.dart';
import 'package:movies_ducr/features/leading/presentation/widgets/bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Perfil'),
      bottomNavigationBar: MoviesBottomNavigationBar(posicion: 0),
    );
  }
}