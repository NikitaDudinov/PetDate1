import 'package:flutter/material.dart';
import 'package:petdate1/appcolors.dart';


 class MyButtonDalee extends StatelessWidget {
  void Function() onTap;
  MyButtonDalee(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.085,
        decoration: BoxDecoration(
          color: AppColors.threeColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text('Далее', style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
        ),
      ),
    );
  }
}
class MyButtonVopros extends StatelessWidget {
  void Function() onTap;
  MyButtonVopros(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.twoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
          children: [
               SizedBox(
                 width: 10,
               ),
               Icon(Icons.question_mark),
            SizedBox(
              width: 10,
            ),
               Text('Вопрос ответ', style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
        ]),
      ),
    );
  }
}
class MyButtonPodelitsia extends StatelessWidget {
  void Function() onTap;
  MyButtonPodelitsia(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.twoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share),
              SizedBox(
                width: 10,
              ),
              Text('Поделиться', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),),
            ]),
      ),
    );
  }
}
class MyButtonPhoto extends StatelessWidget {
  void Function() onTap;
  MyButtonPhoto(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
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
          height: size.height * 0.25,
          width: size.width * 0.3,
          child: Container(
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
    );
  }
}
class RadioButtonCool extends StatelessWidget {
  int activeIndex;
  //Function(int) callBack;
  int index;
  RadioButtonCool(
      {required this.activeIndex,  required this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => callBack(index),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: activeIndex == index ? Colors.cyan : Colors.grey,
        ),
        child: Center(
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
class MyButtonCamera extends StatelessWidget {
  void Function() onTap;
  MyButtonCamera(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: 125,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.twoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.camera_alt),
              SizedBox(
                width: 10,
              ),
              Text('Фото', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
            ]),
      ),
    );
  }
}

class MyButtonPhotos extends StatelessWidget {
  void Function() onTap;
  MyButtonPhotos(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: 125,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.twoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.photo),
              SizedBox(
                width: 10,
              ),
              Text('Галерея', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
            ]),
      ),
    );
  }
}
class MyButtonDox extends StatelessWidget {
  void Function() onTap;
  MyButtonDox(
      {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTapDown: (TapDownDetails? details) => onTapStart(),
      //onTapUp: (TapUpDetails? details) => onTapEnd(),
      onTap: () => onTap(),
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.twoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.document_scanner_sharp),
              SizedBox(
                width: 10,
              ),
              Text('Документ', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
            ]),
      ),
    );
  }
}