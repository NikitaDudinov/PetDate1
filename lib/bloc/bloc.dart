import 'package:bloc/bloc.dart';
import 'package:petdate1/bloc/state.dart';

import '../exeptions/exeptions.dart';
import '../model/user.dart';
import '../repository/repository.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(EmptyText(
            login: '',
            password: '',
            email: '',
            password1: '',
            name: '',
            vid: '',
            opisanie: '',
            pol: '',
            vozrast: '',
            username: '',
            surname: '',
      ));

  void setText(
      {required String login,
      required String password,
      required String email,
      required String password1,
      required String name,
      required String vid,
      required String opisanie,
      required String pol,
      required String vozrast,
      required String username,
      required String surname,}) {
    emit(SaveText(
        login: state.login,
        password: state.password,
        email: state.email,
        password1: state.password1,
        name: state.name,
        vid: state.vid,
        opisanie: state.opisanie,
        pol: state.pol,
        vozrast: state.vozrast,
        username: state.username,
        surname: state.surname));
  }
}

/*class UserCubit extends Cubit<UserState>{
  UserCubit({required this.repository}) : super(UnAuthUserState()){
    repository.token.stream.listen((event) {_checkUserToken(event);});
    repository.user.stream.listen((event) {_checkUserData(event);});
  }

  Repository repository;

  String id = '';

  void _checkUserToken(String event){
    if(event.isNotEmpty){
      emit(HaveTokenState());
    }
  }

  void _checkUserData(User event){
    if(event.id != null){
      emit(AuthUserState(user: event));
    }
  }

  Future<void> auth({required String login, required String password, required String id}) async{
    this.id = id;
    try {
      await repository.auth(login: login, password: password, id: id);
    }catch (e){
      if(e is AlreadyExistException){
        emit(AlreadyExistState());
      }
      if(e is ServerException){
        emit(ServerError());
      }
    }
  }

}*/