import 'package:dio/dio.dart';
import 'package:movies_app/core/const.dart';
import 'package:movies_app/core/server_error.dart';
import 'package:movies_app/features/main/home/data/model/news_response.dart';
import 'package:movies_app/features/main/movie/data/model/movie_response.dart';
import 'package:movies_app/features/main/movie/data/model/movies_response.dart';

class MoviesRepository{
  final dio=Dio()..options=BaseOptions(
    headers:  {
      'X-API-KEY': 'Q694VGC-Q4F4SRS-HHJ6VS2-AT2NXWQ'
    },
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
  Future<GetMoviesResponse> getMovies()async{
    try{
      final response=await dio.get('https://api.kinopoisk.dev/v1.3/movie?page=1&limit=10');
      if(response.statusCode==200 || response.statusCode==201){
        return GetMoviesResponse.fromJson(response.data);
      }
  throw ServerException.fromJson(response.data);
    }on DioException catch(e){
      throw ServerException.fromJson(e.response?.data);
    }
  }

  Future<GetMovieResponse> getMovie(String id) async {
    try {
      final response = await dio.get<dynamic>(
        '${MovieUrl.movieUrl}/v1.3/movie/$id',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetMovieResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'AnyThings wrong!');
    }
  }


}

