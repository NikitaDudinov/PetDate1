import 'package:flutter/material.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/mywidgets/mybutton.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset("assets/images/Star.png"),
                        iconSize: 20,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: size.width * 0.7,
                      ),
                      IconButton(
                        icon: Image.asset("assets/images/Settings.png"),
                        iconSize: 20,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dogs.jpg"),
                    radius: size.height * 0.11,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    context.read<AppCubit>().state.login,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Card(
                    color: AppColors.twoColor,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),),
                    child: SizedBox(
                      height: size.height * 0.24,
                      width: size.width * 0.30,
                      child: Column(
                        children: [
                          //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: size.height * 0.2,
                            decoration:  BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/dogs.jpg"),
                                  fit: BoxFit.fill),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.004,
                          ),
                          Text(
                            context.read<AppCubit>().state.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.22,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButtonVopros(onTap: () {}),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      MyButtonPodelitsia(onTap: () {}),
                    ],
                  ),
                ],
              )

          ),
        ),
    );
  }
}
