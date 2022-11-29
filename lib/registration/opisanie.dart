import 'package:flutter/material.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/main.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/photo.dart';
import 'package:petdate1/account/account.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:petdate1/registration/purpose.dart';
class Opisanie extends StatefulWidget {


  @override
  State<Opisanie> createState() => _OpisanieState();
}

String _opisanie = '';

class _OpisanieState extends State<Opisanie> {
  @override
  Widget build(BuildContext context) {
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
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Purpose()));
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
                  height: 150,
                ),
                Text(
                  'Добавьте описание своего',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text(
                  'питомца',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        onChanged: (text) {
                          bloc.state.opisanie = text;
                        },
                        decoration: InputDecoration(
                          hintText: bloc.state.opisanie,
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: AppColors.twoColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButtonDalee(onTap: () {
                          //Dio dio=Dio();
                          //final res = await dio.post('http://192.168.0.11:3000/user', data: {
                            //'opisanie': bloc.state.opisanie,
                          //});
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Account()));
                        })
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
