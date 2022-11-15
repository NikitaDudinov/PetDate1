import 'package:flutter/material.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/account/maps.dart';
import 'package:petdate1/account/messages.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../appcolors.dart';

class Poisk extends StatefulWidget {
  const Poisk({Key? key}) : super(key: key);

  @override
  State<Poisk> createState() => _PoiskState();
}

class _PoiskState extends State<Poisk> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
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
                   child: Column(
                     children: [
                       //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                       Container(
                         width: MediaQuery.of(context).size.width,
                         height: size.height * 0.17,
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
                       SizedBox(
                         height: size.height * 0.006,
                       ),
                       Text(
                         context.read<AppCubit>().state.name,
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 20,
                             fontWeight: FontWeight.w600),
                       ),
                       SizedBox(
                         height: size.height * 0.0008,
                       ),
                       Text(
                         context.read<AppCubit>().state.vozrast,
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.normal),
                       ),
                     ],
                   ),
                 ),
               ),
            )

            ),
          ),
        );

  }
}

