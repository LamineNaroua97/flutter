import 'package:flutter/material.dart';
import 'package:news/pages/accueil/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Niger News',
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}
