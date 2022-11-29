import 'package:flutter/material.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/photo.dart';
import 'package:petdate1/registration/vid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:dio/dio.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Years extends StatefulWidget {
  const Years({Key? key}) : super(key: key);

  @override
  State<Years> createState() => _YearsState();
}
enum Pet { nul, men, women, germ }

class _YearsState extends State<Years> {
  String s = '';
  Pet? _pet = Pet.nul;
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Vid()));
                    },
                    child: const Text('Назад', style: TextStyle(color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Введите дату рождения',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            Text(
              'своего питомца',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.008,
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            SizedBox(
              height: size.height*0.25,
              child: ScrollDatePicker(
                selectedDate: _selectedDate,
                locale: Locale('zh'),
                onDateTimeChanged: (DateTime value) {
                  setState(() {
                    _selectedDate = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.012,
            ),
            Text(
              'Какой пол питомца',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.024,
            ),
            Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Мужской'),
                    leading: Radio<Pet>(
                      value: Pet.men,
                      groupValue: _pet,
                      onChanged: (Pet? value) {
                        setState(() {
                          _pet = value;
                          bloc.state.pol = 'Мужской';
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Женский'),
                    leading: Radio<Pet>(
                      value: Pet.women,
                      groupValue: _pet,
                      onChanged: (Pet? value) {
                        setState(() {
                          _pet = value;
                          bloc.state.pol = 'Женский';
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Гермофродит'),
                    leading: Radio<Pet>(
                      value: Pet.germ,
                      groupValue: _pet,
                      onChanged: (Pet? value) {
                        setState(() {
                          _pet = value;
                          bloc.state.pol = 'Гермофродит';
                        });
                      },
                    ),
                  ),]
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtonDalee(onTap: () {
                  // Dio dio=Dio();
                  // final res = await dio.post('http://192.168.0.11:3000/user', data: {
                  // 'vozrast': bloc.state.vozrast,
                  //'pol': bloc.state.pol
                  // });
                  s = _selectedDate.toString();
                  for (int i = 0; i < 11; i++) {
                    bloc.state.vozrast = bloc.state.vozrast + s[i];
                  }
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Photo()));
                })
              ],
            ) ],
        ),

      )
    ));
  }
}
