import 'package:flutter/material.dart';
import 'package:news/modele/categorie.dart';

class DetailPagesCat extends StatelessWidget {
  const DetailPagesCat({super.key, required this.categorie});

  final Categorie categorie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categorie.categorie)),
    );
  }
}
