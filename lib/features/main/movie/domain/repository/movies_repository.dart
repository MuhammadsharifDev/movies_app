import 'package:dio/dio.dart';
import 'package:movies_app/core/server_error.dart';
import 'package:movies_app/features/main/movie/data/model/movie_response.dart';
import 'package:movies_app/features/main/movie/data/model/movies_response.dart';

class MoviesRepository{
  final dio = Dio()
    ..options = BaseOptions(
      headers:  {
        'X-API-KEY': '297H19Z-RWW4FZ0-HG3BC5Q-WG5VDC2'
      },
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
    )
    ..interceptors.addAll(
      [
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );


  Future<GetMoviesResponse> getMovies() async {
    try {
      final response = await dio.get(
        'https://api.kinopoisk.dev/v1.3/movie?page=1&limit=10',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetMoviesResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Something went wrong!');
    }
  }


  
  Future<MovieResponse>  getmovieId(String id)async{
    try{
      final response=await dio.get('https://api.kinopoisk.dev/v1.3/movie/$id');
      if(response.statusCode==200 || response.statusCode==201){
        return MovieResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    }on DioException catch(e){
      throw ServerException.fromJson(e.response?.data);
    }on FormatException{
      throw ServerException(message:'Errorrr=>>>>>>>');
    }
  }


}

