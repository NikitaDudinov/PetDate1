import 'package:flutter/material.dart';
import 'package:petdate1/registration/dopphoto.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'vozrast.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';


class Photo extends StatefulWidget {


  @override
  State<Photo> createState() => _PhotoState();
}
Uint8List? imageBytes;
bool isImageNotNull = false;
class _PhotoState extends State<Photo> {

  @override
  Future<void> pickPhoto() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imageBytes = await image.readAsBytes();
      setState(() {
        isImageNotNull = true;
      });
    }
  }
  var index=0;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: SafeArea(
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
                            builder: (context) => MyStatefulWidget()));
                      },
                      child: const Text('Назад', style: TextStyle(color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: size.height * 0.06,
              ),
              Text(
                'Загрузите фото профиля',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Загрузите фото вашего питомца, на ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                'котором его хорошо видно',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Visibility(
                  visible: index == 0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      SizedBox(
                        height: size.height * 0.15,
                        width: size.width * 0.3,
                        child: ElevatedButton(
                          onPressed: () {pickPhoto(); index = 1;},
                          child: Icon(Icons.pets_sharp),
                        ) ,
                      ),
                      SizedBox(
                        height: size.height * 0.3,
                      )
                    ],
                  )),
              Visibility(
                visible: index ==1,
                child: Column(
                  children: [
                    imageBytes == null
                        ? Container()
                        : Image.memory(imageBytes!, height: size.height * 0.6, width:size.width * 0.6,),
                  ],
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDalee(onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  })
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}




