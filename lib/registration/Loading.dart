import 'package:flutter/material.dart';
import 'package:petdate1/mywidgets/mybutton.dart';
import 'package:petdate1/registration/opisanie.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/registration/UserPhoto.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petdate1/registration/purpose.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
            SizedBox(
              height: size.height * 0.2,
            ),
            Text(
              'Создаем ваш профиль',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),

            SizedBox(
              width: 300,
              height: 20,
              child: LinearProgressIndicator(
                backgroundColor: Color(0xc9E5C9C1),
                valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffB9848C)),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Идет загрузка, подождите несколько',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            Text(
              ' секунд',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: size.height * 0.44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtonDalee(onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Account()));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class LoadingAction extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter LinearProgressIndicator Example'),
//       ),
//       body: Center(
//         child:  LinearProgressIndicator(
//           backgroundColor: Colors.cyan[100],
//           valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
//         ),
//       ),
//     );
//   }
// }
//
