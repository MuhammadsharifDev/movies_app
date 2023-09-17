import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xff15141F),
        appBar: AppBar(
          backgroundColor: const Color(0xff15141F),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Movies',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: GridView.builder(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: (1 / 1.5),
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.deepPurple,
                ),
              );
            },));
  }
}
