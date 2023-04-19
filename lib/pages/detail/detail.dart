import 'package:flutter/material.dart';
import 'package:news/modele/info.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({super.key, required this.info});

  final Info info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(info.titre)),
      body: Text(info.description,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          )),
    );
  }
}
