import 'package:flutter/material.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/main.dart';
import 'package:petdate1/name.dart';
import 'package:petdate1/mybutton.dart';
import 'package:petdate1/years.dart';
import 'appcolors.dart';
import 'vozrast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
class Vid extends StatefulWidget {
  const Vid({Key? key}) : super(key: key);

  @override
  State<Vid> createState() => _VidState();
}
enum SingingCharacter { nul,dog, cat, ferret, crocodile, parrot }
String _poroda = '';
class _VidState extends State<Vid> {
  SingingCharacter? _character = SingingCharacter.nul;
  @override

  int _radioVal = 0;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:
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
                              MaterialPageRoute(builder: (context) => Name()));
                        },
                        child: const Text('Назад', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
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
                    Text(
                      'Выберите вид вашего',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  'питомца',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Column(
                  children:  <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: TextField(
                        onChanged: (text) {
                        },
                        decoration: InputDecoration(
                          hintText: 'Поиск',
                            prefixIcon: Icon(Icons.search),
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
                Column(
                  children:
                  <Widget>[
                    ListTile(
                      title: const Text('Собака'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.dog,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            bloc.state.vid = 'Собака';

                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Кошка'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.cat,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            bloc.state.vid = 'Кошка';
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Хорек'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.ferret,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            bloc.state.vid = 'Хорек';
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Крокодил'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.crocodile,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            bloc.state.vid = 'Крокодил';
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Попугай'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.parrot,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            bloc.state.vid = 'Попугай';
                          });
                        },
                      ),
                    ),
                    ]),
                SizedBox(
                  height: size.height * 0.0243,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButtonDalee(onTap: () {
                      //Dio dio=Dio();
                      //final res = await dio.post('http://192.168.0.11:3000/user', data: {
                       // 'vid': bloc.state.vid,
                      //});
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Years()));
                    })
                  ],
                )
              ]),

      ),
    );
  }
}

