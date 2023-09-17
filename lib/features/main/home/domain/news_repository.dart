import 'package:dio/dio.dart';
import 'package:movies_app/core/server_error.dart';
import 'package:movies_app/features/main/home/data/model/news_response.dart';

class NewsRepository{
  final dio=Dio()..options=BaseOptions(
    headers:  {
      'X-API-KEY': '94H15QJ-EXR4Q8Z-QKTM506-99999'
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


  Future<GetMovieResponse> getMovies()async{
    try{
      final response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=898189a4d27b4766a9054d9a3483454c');
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