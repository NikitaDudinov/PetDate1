import 'package:flutter/material.dart';
import 'package:petdate1/main.dart';
import 'package:petdate1/Registration.dart';
import 'package:petdate1/mybutton.dart';
import 'package:petdate1/vid.dart';
import 'package:petdate1/appcolors.dart';
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
                  Padding(padding: EdgeInsets.only(left: 10)),
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
                      child: const Text('Назад', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Text(
                'Введите имя питомца',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.03,
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
            height: size.height * 0.3335,
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


