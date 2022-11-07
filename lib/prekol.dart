import 'package:flutter/material.dart';
class Prekol extends StatelessWidget {
  const Prekol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/img_5.png"),
          Text(
          '↑ Супер',
          style: TextStyle(
              color: Colors.black,
              fontSize: 60,
              fontWeight: FontWeight.w600),
        ),
            Text(
              'тачка',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'прям',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'реально',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'пушка',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Пожалуйста',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset("assets/images/img_2.png"),
          ],
        )
      ),
    );
  }
}
