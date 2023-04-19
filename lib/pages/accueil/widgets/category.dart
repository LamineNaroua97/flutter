import 'package:flutter/material.dart';
import 'package:news/modele/categorie.dart';
import 'package:news/pages/accueil/widgets/actu.dart';
import 'package:news/pages/accueil/widgets/newsactu.dart';
import 'package:news/pages/detail/widgets/detailcat.dart';

class Category extends StatelessWidget {
  Category({super.key});
  final List<Categorie> category = Categorie.category();

  final categories = [
    {
      'icon': Icons.attach_money,
      'color': const Color(0xFF605CF4),
      'title': 'Business'
    },
    {
      'icon': Icons.sports_soccer,
      'color': const Color(0xFFFC77A6),
      'title': 'Sport'
    },
    {
      'icon': Icons.monitor_heart_sharp,
      'color': const Color(0xFF4391FF),
      'title': 'Santé'
    },
    {
      'icon': Icons.explore,
      'color': const Color(0xFF7182f2),
      'title': 'International'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: categories[index]['color'] as Color),
                          child: Icon(
                            categories[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index]['title'] as String,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 33,
                    )),
                itemCount: categories.length,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Nouvelles Actualités',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            NewActu(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Actualités',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Actu(),
          ],
        ),
      ),
    );
  }
}
