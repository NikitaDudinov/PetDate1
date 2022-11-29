import 'package:flutter/material.dart';
import 'package:petdate1/main.dart';
import 'package:petdate1/registration/Registration.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/vid.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
class Name extends StatefulWidget {
  @override
  State<Name> createState() => _NameState();
}

String _name = '';

class _NameState extends State<Name> {
  void _showSnack() =>
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Введите имя'),
        duration: Duration(seconds: 3 ),
      ));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Column(
        children: [
          Column(
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
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Registration()));
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
                height: size.height * 0.1,
              ),
              Text(
                'Введите имя питомца',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                    onChanged: (text) {
                      bloc.state.name = text;
                    },
                  decoration: InputDecoration(
                    hintText: bloc.state.name,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.twoColor,
                  )
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.5,
          ),
          MyButtonDalee(onTap: ()  {
            if ( bloc.state.name != '' ) {
              //Dio dio=Dio();
              //final res = await dio.patch('http://192.168.0.11:3000/user', data: {
                //'name': bloc.state.name,
              //});
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Vid()));
              });
            } else {
              setState(() {
                _showSnack();
              });
            }

          })
        ],
      ),
    ));
  }
}


