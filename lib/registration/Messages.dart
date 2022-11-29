import 'package:flutter/material.dart';
import 'package:petdate1/registration/Loading.dart';
import 'package:petdate1/registration/PetPhoto.dart';
import 'package:petdate1/registration/dopphoto.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/purpose.dart';
import 'vozrast.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class Massages extends StatefulWidget {
  const Massages({Key? key}) : super(key: key);

  @override
  State<Massages> createState() => _CertificateState();
}
class _CertificateState extends State<Massages> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                        textStyle:  TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Purpose()));
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
                'Какие уведомления вы',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              Text(
                'хотите получать',
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
                'Выберите какие уведомления вы хотите',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),

              Text(
                'получать от PetDate',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Мужской'),
                      // leading: Radio<Pet>(
                      //   value: Pet.men,
                      //   groupValue: _pet,
                      //   onChanged: (Pet? value) {
                      //     setState(() {
                      //       _pet = value;
                      //       bloc.state.pol = 'Мужской';
                      //     });
                      //   },
                      // ),
                    ),

                    ListTile(
                      title: const Text('Гермофродит'),
                      // leading: Radio<Pet>(
                      //   value: Pet.germ,
                      //   groupValue: _pet,
                      //   onChanged: (Pet? value) {
                      //     setState(() {
                      //       _pet = value;
                      //       bloc.state.pol = 'Гермофродит';
                      //     });
                      //   },
                      // ),
                    ),]
              ),

              SizedBox(
                height: size.height * 0.2,
              ),
              MyButtonDalee(onTap: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Loading()));})
            ],
          ),
        ),
      ),
    );
  }
}
