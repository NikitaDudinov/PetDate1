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
        content: Text('Проверьте данные для входа',textAlign: TextAlign.center,),
        duration: Duration(seconds: 3 ),
      ));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
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
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
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
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Введите свои данные для входа',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  'Логин',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
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
                          loginchik = text;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: AppColors.twoColor,
                        ),
                      ),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //         bottom: MediaQuery.of(context).viewInsets.bottom))
                  ],
                ),
                Text(
                  'Пароль',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
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
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: AppColors.twoColor,
                        ),
                      ),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //         bottom: MediaQuery.of(context).viewInsets.bottom))
                  ],
                ),
                SizedBox(
                  height: size.height * 0.4,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButtonDalee(onTap: () {
                        if ((bloc.state.password == passwordic) & (bloc.state.login == loginchik) && passwordic != '' && loginchik != ''){
                          setState(() {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Account()));
                          });
                        } else {
                          setState(() {
                            _showSnack();
                          });
                        }
                      })
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }


}
