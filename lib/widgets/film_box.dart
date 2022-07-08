import 'package:flutter/material.dart';
import 'package:testlevel/models/film.dart';
import 'package:testlevel/static/color.dart';

class FilmBox extends StatelessWidget {
  final Film film;
  const FilmBox({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
            color: TLColor.apps, borderRadius: BorderRadius.circular(20)),
        // padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  SizedBox(child: Image.asset(film.image, fit: BoxFit.cover)),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  children: [
                    ListTile(
                        leading: const Text('title:'), title: Text(film.title)),
                    ListTile(
                        leading: const Text('cat:'),
                        title: Text(film.category)),
                    ListTile(
                        leading: const Text('star:'),
                        title: Text(film.starMovie)),
                    ListTile(
                        leading: const Text('year:'),
                        title: Text(film.year.toString())),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
