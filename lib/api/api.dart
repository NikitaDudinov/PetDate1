import '../exeptions/exeptions.dart';
import '../model/user.dart';
import 'package:dio/dio.dart';

class Api {
  Future<String> auth({required String login, required String password}) async {
    await Future.delayed(Duration(seconds: 2));
    return 'gvrkjbnsDLKnDKBJnf';
  }

  Future<User> getUserInfo({required String id}) async {
    Dio dio = Dio();
    if(int.tryParse(id) == null){
      throw ServerException();
    }
    try {
      if(int.parse(id) > 12){
        throw DioError(requestOptions: RequestOptions(path: 'http://172.20.10.10:3000/user/$id'), type: DioErrorType.cancel);
      }
      final res = await dio.get('http://172.20.10.10:3000/user/$id',);
      print(res);
      return User.fromJson(res.data);
    } on DioError catch (error){
      if(error.type == DioErrorType.cancel){
        throw AlreadyExistException();
      }
      throw ServerException();
    }
  }
}
