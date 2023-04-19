import 'package:flutter/material.dart';
import 'package:news/pages/accueil/widgets/category.dart';
import 'package:news/pages/accueil/widgets/header.dart';
import 'package:news/pages/accueil/widgets/search.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(20),
            origin: const Offset(120, 20),
            child: Image.asset(
              'assets/images/bg_liquid.png',
              width: 100,
            ),
          ),
          Positioned(
            right: 0,
            top: 150,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(120, 20),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 150,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Header(),
                const Search(),
                Category(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      color: const Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF5F67EA),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 25,
                ),
              ),
              BottomNavigationBarItem(
                label: "Videos",
                icon: Container(
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Revues",
                icon: Container(
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
