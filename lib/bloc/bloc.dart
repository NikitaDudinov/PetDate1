import 'package:bloc/bloc.dart';
import 'package:petdate1/bloc/state.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(EmptyText(login: '', password: '', email:'', password1:'', name:'', vid:'', opisanie:'', pol:'', vozrast:''));

  void setText({required String login,required String password, required String email, required String password1, required String name, required String vid , required String opisanie, required String pol, required String vozrast}){
    emit(SaveText(login: state.login, password: state.password, email: state.email, password1: state.password1, name: state.name, vid: state.vid, opisanie: state.opisanie, pol: state.pol, vozrast: state.vozrast));
  }
}
