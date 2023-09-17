import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/home/presintation/bloc/home_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xff15141F),
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    SizedBox(height: media.size.height * 50 / 812,),
                    SizedBox(
                      height: media.size.height * 191 / 812,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            width: media.size.width * 327 / 375,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue
                            ),
                            child:Image.network(state.getMovieResponse?.results?[index].backdropPath??'')
                          );
                        },
                      ),
                    ),
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}
