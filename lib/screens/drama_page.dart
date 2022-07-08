import 'package:flutter/material.dart';
import 'package:testlevel/database/listfilm_drama.dart';
import 'package:testlevel/widgets/film_box.dart';

class DramaPage extends StatelessWidget {
  const DramaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  style: TextStyle(fontSize: 25.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: 'Search'),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                      itemCount: listFilmDrama.length,
                      itemBuilder: (context, index) => FilmBox(
                            film: listFilmDrama[index],
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
