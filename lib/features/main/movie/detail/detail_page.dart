import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/movie/bloc/movie_bloc.dart';
import 'package:movies_app/features/main/movie/detail/trailer_video_page/trailer_page.dart';
import 'package:movies_app/features/main/movie/detail/widgets/actors_list.dart';
import 'package:movies_app/features/main/movie/detail/widgets/films_list.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15141F),
      body: BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.orange,
                  )),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrailerPage()));
                  },
                  child: Text('Trailer'),
                ),
              ],
              centerTitle: true,
              backgroundColor: const Color(0xff15141F),
              expandedHeight: 200,
              collapsedHeight: 80,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(children: [
                  CachedNetworkImage(
                    imageUrl:
                        state.movie?.backdrop?.previewUrl.toString() ?? '',
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 80,
                      child: ActorsListWidget(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "О фильме",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      state.movie?.description ?? '',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Похожие фильмы",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 280,
                      child: FilmsListWidget(),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
