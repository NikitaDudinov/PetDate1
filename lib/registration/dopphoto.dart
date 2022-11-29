import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petdate1/registration/certificate.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/photo.dart';
import '../mywidgets/appcolors.dart';
import '../bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bloc = context.read<AppCubit>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Photo()));
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
                height: size.height * 0.01,
              ),
              Text(
                'Загрузите больше фото',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    //Divider(),
                    imagefiles != null
                        ? Wrap(
                            children: imagefiles!.map((imageone) {
                              return Container(
                                  child: Card(
                                child: SizedBox(
                                  height: size.height * 0.25,
                                  width: size.width * 0.3,
                                  child: Image.file(File(imageone.path)),
                                ),
                              ));
                            }).toList(),
                          )
                        : Container()
                  ],
                ),
              ),
              Visibility(
                  visible: index == 1,
                  child: GestureDetector(
                    //onTapDown: (TapDownDetails? details) => onTapStart(),
                    //onTapUp: (TapUpDetails? details) => onTapEnd(),
                    onTap: (){openImages(); index = 0;},
                    child: Card(
                      color: AppColors.twoColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                          height: size.height * 0.6,
                          width: size.width * 0.6,
                          child: Container(
                            child: Icon(
                              Icons.pets_sharp,
                              size: 100,
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: const BoxDecoration(
                              color: AppColors.threeColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                            ),
                          )
                      ),
                    ),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              MyButtonDalee(onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Certificate()));
              }),
            ],
          )),
        ));
  }
}
