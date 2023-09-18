import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/movie/bloc/movie_bloc.dart';
import 'package:movies_app/features/main/movie/detail/detail_page.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
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
        body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            return GridView.builder(
              itemCount: state.movies?.docs?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: (1 / 1.5),
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  DetailPage(image: state.movies?.docs?[index].poster?.previewUrl??'',),
                        ),
                      );
                      context.read<MovieBloc>().add(GetMovieEvent(
                          state.movie?[index].id.toString() ?? ''));
                    },
                    child: Image.network(
                      state.movies?.docs?[index].poster?.previewUrl ?? "",
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
