import 'package:flutter/material.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/opisanie.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/registration/photo.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petdate1/registration/purpose.dart';

class Geolokacia extends StatefulWidget {

  @override
  State<Geolokacia> createState() => _GeolokaciaState();
}

class _GeolokaciaState extends State<Geolokacia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 10, top: 20)),
                SizedBox(
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Photo()));
                    },
                    child: const Text('Назад', style: TextStyle(color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Поделиться локаций ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Вам нужно делиться локацией,',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Text(
              ' чтобы использовать PetDate',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Image( image: AssetImage("assets/images/img.png"), height: 200, width: 200,),
            SizedBox(
              height: 100,
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

