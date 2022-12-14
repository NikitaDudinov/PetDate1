import 'package:flutter/material.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/certificate.dart';
import 'package:petdate1/registration/opisanie.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/registration/UserPhoto.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petdate1/registration/purpose.dart';

class Geolokacia extends StatefulWidget {

  @override
  State<Geolokacia> createState() => _GeolokaciaState();
}

class _GeolokaciaState extends State<Geolokacia> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                SizedBox(
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Certificate()));
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
              'Поделиться локаций',
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
              'Вам нужно делиться локацией, чтобы',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            Text(
              ' использовать PetDate',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: size.height * 0.16,
            ),
            Image( image: AssetImage("assets/images/img.png"), height: 200, width: 200,),
            SizedBox(
              height: size.height * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtonDalee(onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Purpose()));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

