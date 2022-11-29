
import 'package:rxdart/rxdart.dart';
import '../api/api.dart';
import '../exeptions/exeptions.dart';
import '../model/user.dart';

class Repository{

  /*BehaviorSubject<String> token = BehaviorSubject<String>();
  BehaviorSubject<User> user = BehaviorSubject<User>();
  Api api = Api();


  Future<void> auth({required String login, required String password, required String id}) async{
    final result = await api.auth(login: login, password: password);
    token.add(result);
    try {
      final userRes = await api.getUserInfo(id: id, login: login, password: password);
      user.add(userRes);
    }catch (e){
      if(e is AlreadyExistException){
        throw AlreadyExistException();
      }
      throw ServerException();
    }

  }*/
}