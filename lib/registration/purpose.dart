import 'package:flutter/material.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/registration/dopphoto.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/opisanie.dart';
import '../mywidgets/appcolors.dart';
import '../bloc/bloc.dart';
import 'geolokacia.dart';
import 'vozrast.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Purpose extends StatefulWidget {
  const Purpose({Key? key}) : super(key: key);

  @override
  State<Purpose> createState() => _PurposeState();
}

class _PurposeState extends State<Purpose> {
  var index1 =0;
  var index2 = 0;
  var index3 = 0;
  var index4 = 0;
  var index5 = 0;
  Color _widgetOne = AppColors.twoColor;
  Color _widgetTwo = AppColors.twoColor;
  Color _widgetThree = AppColors.twoColor;
  Color _widgetFour = AppColors.twoColor;
  @override
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
                  Padding(padding: EdgeInsets.only(left: 10)),
                  SizedBox(
                    height: size.height * 0.06,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Geolokacia()));
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
                'Для чего вам нужен',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                'PetDate?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (index1 == 0) {
                          _widgetOne = AppColors.twoColor;
                          index1 = 1;
                          if ((index2 == 1) & (index3 == 1) & (index4 == 1)) {index5 = 0;}
                        } else {
                          _widgetOne = AppColors.threeColor;
                          index1 = 0;
                          index5 = 1;
                        }
                      });
                    },
                    child: Card(
                      color: _widgetOne,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                        height: size.height * 0.30,
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height * 0.25,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dogs.jpg"),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                              ),
                            ),
                            Text(
                              'Дружба',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (index2 == 0) {
                          _widgetTwo = AppColors.twoColor;
                          index2 = 1;
                          if ((index1 == 1) & (index3 == 1) & (index4 == 1)) {index5 = 0;}
                        } else {
                          _widgetTwo = AppColors.threeColor;
                          index2 = 0;
                          index5 = 1;
                        }
                      });
                    },
                    child: Card(
                      color: _widgetTwo,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                        height: size.height * 0.30,
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height * 0.25,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dogs.jpg"),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                              ),
                            ),
                            Text(
                              'Прогулка',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: size.height*0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (index3 == 0) {
                          _widgetThree = AppColors.twoColor;
                          index3 = 1;
                          if ((index2 == 1) & (index2 == 1) & (index4 == 1)) {index5 = 0;}
                        } else {
                          _widgetThree = AppColors.threeColor;
                          index3 = 0;
                          index5 = 1;
                        }
                      });
                    },
                    child: Card(
                      color: _widgetThree,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                        height: size.height * 0.30,
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height * 0.25,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dogs.jpg"),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                              ),
                            ),
                            Text(
                              'Связка',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (index4 == 0) {
                          _widgetFour = AppColors.twoColor;
                          index4 = 1;
                          if ((index2 == 1) & (index3 == 1) & (index1 == 1)) {index5 = 0;}
                        } else {
                          _widgetFour = AppColors.threeColor;
                          index4 = 0;
                          index5 = 1;
                        }
                      });
                    },
                    child: Card(
                      color: _widgetFour,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                        height: size.height * 0.30,
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height * 0.25,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dogs.jpg"),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                              ),
                            ),
                            Text(
                              'Общение',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                  visible: index5 !=0 ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButtonDalee(onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Account()));
                      })
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
