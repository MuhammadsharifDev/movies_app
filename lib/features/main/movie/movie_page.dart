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
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: (1 / 1.9),
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    color: const Color(0xff15141F),
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()),
                            );
                            context.read<MovieBloc>().add(GetMovieIdEvent(
                                state.movies?.docs?[index].id.toString() ?? ''));
                            print(state.movie?.videos?.trailers??'');

                          },
                          child: Image.network(
                            state.movies?.docs?[index].poster?.previewUrl ?? "",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          'Название: ${state.movies?.docs?[index].name ?? ''}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Год: ${state.movies?.docs?[index].year ?? ''}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Рейтинг: ${state.movies?.docs?[index].rating?.imdb ?? ''}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
    );
  }
}
