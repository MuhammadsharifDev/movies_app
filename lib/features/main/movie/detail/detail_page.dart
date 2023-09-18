import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/movie/bloc/movie_bloc.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.image});

  dynamic image;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff15141F),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 350,
                backgroundColor: Colors.white,
                elevation: 0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              color: Colors.white,
                              child: ListTile(
                                leading:Container(
                                  width: 60,
                                  color: Colors.red,
                                  child: Image.network(state.movie?.persons?[index].photo.toString()??'',fit: BoxFit.fill,),
                                ),
                                title: Text(state.movie?.persons?[index].name ??'' ),
                              ),
                              ),
                            );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
