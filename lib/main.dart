import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:movies_app/features/auth/login/login_page.dart';
import 'package:movies_app/features/main/bloc/main_bloc.dart';
import 'package:movies_app/features/main/main_page.dart';
import 'package:movies_app/features/main/movie/bloc/movie_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => MainBloc(),),
        BlocProvider(create: (context) => MovieBloc()..add(const GetMoviesEvent()),),
      ],
      child:   KeyboardDismisser(
        child: ScreenUtilInit(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home:LoginPage()
          ),
        ),
      ),
    );
  }
}


