import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/movie/bloc/movie_bloc.dart';

class ActorsListWidget extends StatelessWidget {
  const ActorsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: state.movie?.persons?.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 230,
              child: ListTile(
                leading: SizedBox(
                  width: 60,
                  child: CachedNetworkImage(
                    imageUrl:
                    state.movie?.persons?[index].photo ??
                        '',
                    fit: BoxFit.fitWidth,
                    errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                  ),
                ),
                title: Text(
                  state.movie?.persons?[index].name ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  state.movie?.persons?[index].enName ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
