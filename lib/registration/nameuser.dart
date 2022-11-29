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
  void _showSnack() =>
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
        content: Text('Введите данные',textAlign: TextAlign.center,),
        duration: Duration(seconds: 2 ),
      ));
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
                  Padding(padding: EdgeInsets.only(left: 20)),
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
                            color: Colors.black38,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Имя пользователя',
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
                'Введите свои данные',
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
                'Имя',
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
                        bloc.state.username = text;
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

                ],
              ),

              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Фамилия',
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
                        bloc.state.surname = text;
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

                ],
              ),
              SizedBox(
                height: size.height * 0.42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDalee(onTap: ()  {
                    if (bloc.state.username != '' && bloc.state.surname != '') {
                      // _incrementCounter;
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Name()));
                      });
                    } else  {
                      setState(() {
                        _showSnack();
                      });
                    }
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
