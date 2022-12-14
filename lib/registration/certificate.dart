import 'package:flutter/material.dart';
import 'package:petdate1/registration/PetPhoto.dart';
import 'package:petdate1/registration/dopphoto.dart';
import 'package:petdate1/registration/geolokacia.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'vozrast.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  State<Certificate> createState() => _CertificateState();
}
Uint8List? imageBytes;
bool isImageNotNull = false;
class _CertificateState extends State<Certificate> {
  int index = 0;
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
  Future<void> pickPhoto1() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageBytes = await image.readAsBytes();
      setState(() {
        isImageNotNull = true;
      });
    }
  }
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
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PetPhoto()));
                      },
                      child: const Text(
                        '??????????',
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
                '????????????????????????',
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
                '?????????????????? ???????? ???????????? ??????????????????????, ????',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),

              Text(
                '?????????????? ?????? ???????????? ??????????',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  MyButtonCamera(onTap: (){pickPhoto1(); index =1;}),
                  SizedBox(
                    width: size.width * 0.06,
                  ),
                  MyButtonPhotos(onTap: (){pickPhoto1(); index =1;}),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButtonDox(onTap: (){})
                ],
              ),
              Visibility(
                  visible: index == 0,
                  child: SizedBox(
                    height: size.height * 0.4,
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
              SizedBox(
                height: size.height * 0.12,
              ),
              MyButtonDalee(onTap: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Geolokacia()));})
            ],
          ),
        ),
      ),
    );
  }
}
