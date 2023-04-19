// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news/modele/info.dart';

class Actu extends StatelessWidget {
  Actu({super.key});
  final List<Info> infos = Info.infos();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: infos
            .map((info) => Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(info.titre,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                      Image.asset(
                        info.bgImage,
                        width: 300,
                        height: 300,
                      ),
                      // Text(info.description),
                      Center(
                        child: ButtonBar(
                          children: [
                            Icon(
                              Icons.auto_stories_rounded,
                              size: 30,
                              color: Colors.grey,
                            ),
                            Text(info.revue.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
