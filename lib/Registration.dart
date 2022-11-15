import 'package:flutter/material.dart';
import 'package:petdate1/main.dart';
import 'package:petdate1/name.dart';
import 'package:petdate1/appcolors.dart';
import 'package:petdate1/mybutton.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'bloc/state.dart';
import 'nameuser.dart';

class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override

  void _showSnack() =>
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Неправильно введен пароль'),
        duration: Duration(seconds: 3 ),
      ));
  late int index;
  bool _showPassword = false;
  bool _showPassword1 = false;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  SizedBox(
                    height: size.height * 0.06,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Назад',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Регистрация',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Введите свои данные для регистрации',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Логин',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TextField(
                      onChanged: (text) {
                        bloc.state.login = text;
                      },
                      decoration: InputDecoration(
                        hintText: bloc.state.login,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),

                ],
              ),
              Text(
                'e-mail',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TextField(
                      onChanged: (text) {
                        bloc.state.email = text;
                      },
                      decoration: InputDecoration(
                        hintText: bloc.state.email,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),

                ],
              ),
              Text(
                'Пароль',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TextField(
                      obscureText: !this._showPassword,
                      onChanged: (text) {
                        bloc.state.password = text;
                      },
                      decoration: InputDecoration(
                        hintText: bloc.state.password,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                            icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),

                ],
              ),
              Text(
                'Повторите пароль',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TextField(
                      obscureText: !_showPassword1,
                      onChanged: (text) {
                        bloc.state.password1 = text;
                      },
                      decoration: InputDecoration(
                        hintText: bloc.state.password1,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() =>
                                  this._showPassword1 = !this._showPassword1);
                            },
                            icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDalee(onTap: () async {
                    if (bloc.state.password == bloc.state.password1) {
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => NameUser()));
                      });
                    } else {
                      setState(() {
                        _showSnack();
                      });
                    }
                  })
                ],
              )
            ]),
          ),
        ));
  }
}

/*Padding(
padding: EdgeInsets.only(
bottom: MediaQuery.of(context).viewInsets.bottom)*/

/* Dio dio=Dio();
                      final res = await dio.post('http://192.168.0.11:3000/user', data: {
                        //'login': bloc.state.login,
                        //'password': bloc.state.password,
                        //'email': bloc.state.email
                      });
                      print(res.data);*/