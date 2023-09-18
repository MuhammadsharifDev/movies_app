import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/main/bloc/main_bloc.dart';
import 'package:movies_app/features/main/home/presintation/home_page.dart';
import 'package:movies_app/features/main/movie/movie_page.dart';



class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children:  [
             HomePage(),
              MoviesPage()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle), label: 'Movie'),





            ],
            backgroundColor:  const Color(0xff15141F),
            unselectedItemColor: Colors.grey,
            selectedItemColor:const Color(0xffFF8F71),
          ),
        );
      },
    );
  }
}