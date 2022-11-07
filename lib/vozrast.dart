import 'package:flutter/material.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/mybutton.dart';
import 'package:petdate1/photo.dart';
import 'package:petdate1/vid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key, this.restorationId});

  final String? restorationId;
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

enum Pet { nul, men, women, germ }
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with RestorationMixin {
  String vozrast = 'Указать возраст';
  Pet? _pet = Pet.nul;
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(BuildContext context,
      Object? arguments,) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Сохранено: ${_selectedDate.value.day}.${_selectedDate.value
                  .month}.${_selectedDate.value.year} '),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return SafeArea(child:Scaffold(
        body:
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
            Image(
              image: AssetImage('assets/images/img_3.png'), height: size.height * 0.22, width: size.width * 0.22,
            ),
            OutlinedButton(
              onPressed: () {
                bloc.state.vozrast = '${_selectedDate.value.day}.${_selectedDate.value
                    .month}.${_selectedDate.value.year}';
                setState(() {
                  vozrast = '${_selectedDate.value.day}.${_selectedDate.value
                      .month}.${_selectedDate.value.year}';
                });
                _restorableDatePickerRouteFuture.present();

              },
              child: Text(vozrast),
            ),
            SizedBox(
              height: size.height * 0.008,
            ),
            Text(
              'Какой пол питомца',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.006,
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
                MyButtonDalee(onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Photo()));
                })
              ],
            )
          ],
        )
    ) );

  }
}




