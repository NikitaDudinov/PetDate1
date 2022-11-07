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