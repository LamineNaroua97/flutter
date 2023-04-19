import 'package:flutter/material.dart';
import 'package:news/modele/info.dart';
import 'package:news/pages/detail/detail.dart';

class NewActu extends StatelessWidget {
  NewActu({super.key});
  final List<Info> infos = Info.infos();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => DetailPages(
                            info: infos.elementAt(index),
                          )),
                    ))),
                child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        // chidl:Hero(
                        //   tag: infos[index].description
                        //   ),

                        child: Image.asset(infos[index].bgImage),
                      ),
                    )),
              )),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 10,
              )),
          itemCount: infos.length),
    );
  }
}
