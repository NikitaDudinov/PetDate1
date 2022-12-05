import 'package:flutter/material.dart';
import 'package:petdate1/registration/Registration.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/mywidgets/mybutton.dart';

import 'name.dart';
class NameUser extends StatefulWidget {
  const NameUser({Key? key}) : super(key: key);

  @override
  State<NameUser> createState() => _NameUserState();
}

class _NameUserState extends State<NameUser> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                            builder: (context) => Registration()));
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
                'Введите свои данные',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Text(
                'Имя',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.01,
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
                        bloc.state.username = text;
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

                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Фамилия',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.01,
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
                        bloc.state.surname = text;
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

                ],
              ),
              SizedBox(
                height: size.height * 0.24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDalee(onTap: () async {
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Name()));
                      });
                  })
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
