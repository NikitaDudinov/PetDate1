import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
abstract class AppState{
  String login;
  String password;
  String password1;
  String email;
  String name;
  String vid;
  String opisanie;
  String pol;
  String vozrast;

  AppState({required this.login, required this.password, required this.email, required this.password1, required this.name, required this.vid, required this.opisanie, required this.pol, required this.vozrast});
}

class EmptyText extends AppState{
  EmptyText({required super.login,required super.password, required super.email, required super.password1, required super.name, required super.vid, required super.opisanie, required super.pol, required super.vozrast});
}

class SaveText extends AppState{
  SaveText({required super.login,required super.password, required super.email, required super.password1, required super.name, required super.vid, required super.opisanie, required super.pol, required super.vozrast});
}

class PrintText extends AppState{
  PrintText({required super.login,required super.password, required super.email, required super.password1, required super.name, required super.vid, required super.opisanie, required super.pol, required super.vozrast});
}
