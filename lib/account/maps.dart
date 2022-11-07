import 'package:flutter/material.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/account/messages.dart';
import 'package:petdate1/account/poisk.dart';
class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text('Карты')
            ],
          ),
        ),
      ),
    );
  }
}
