import 'package:dio/dio.dart';
import 'package:movies_app/core/server_error.dart';
import 'package:movies_app/features/main/home/data/model/movies_response.dart';

class MoviesRepository{
  final dio=Dio()..options=BaseOptions(
    contentType: 'application/json',
    sendTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    connectTimeout: const Duration(
      seconds: 300,
    ),)..interceptors.addAll(
    [
      LogInterceptor(
        responseBody: true,
        requestBody: true
      ),
    ],
  );


  Future<GetMovieResponse> getMovies()async{
    try{
      final response=await dio.get('https://api.themoviedb.org/3/trending/movie/day?api_key=86adb317601a330d430adead4e089dbf');
      if(response.statusCode==200 || response.statusCode==201){
        return GetMovieResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    }on DioException catch(e){
      throw ServerException.fromJson(e.response?.data);
    }on FormatException{
      throw ServerException(message: 'Something has Errorrrrr==>!!!!!');
    }
  }
}