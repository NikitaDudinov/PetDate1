import 'package:flutter/material.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/name.dart';

import '../bloc/state.dart';
class Vxod extends StatefulWidget {
  const Vxod({Key? key}) : super(key: key);

  @override
  State<Vxod> createState() => _VxodState();
}

class _VxodState extends State<Vxod> {
  String loginchik ='';
  String passwordic ='';
  TextEditingController controller = TextEditingController();

  /*void _incrementCounter() {
    var controller;
    context.read<UserCubit>().auth(
        login: '1', password: '1', id: controller.value.text);
  }*/

  /*void _changeStateBack() {
    context.read<UserCubit>().emit(UnAuthUserState());
  }*/
  void _showSnack() =>
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Неправильно введены данные'),
        duration: Duration(seconds: 3 ),
      ));
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AppCubit>();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  SizedBox(
                    height: 40,
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Вход',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Введите свои данные для входа',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
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
                      controller: controller,
                      onChanged: (text) {
                        loginchik = text;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom))
                ],
              ),
              SizedBox(
                height: 30,
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
                      onChanged: (text) {
                        passwordic = text;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.twoColor,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom))
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDalee(onTap: () {
                    if ((bloc.state.password == passwordic) & (bloc.state.login == loginchik)){
                      setState(() {
                        //_incrementCounter;
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Account()));
                        //print(user.toString());
                      });
                    } else {
                      setState(() {
                        _showSnack();
                      });
                    }
                  })
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
