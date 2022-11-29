import 'package:flutter/material.dart';
import 'package:petdate1/account/account.dart';
import 'package:petdate1/account/chat.dart';
import 'package:petdate1/account/maps.dart';
import 'package:petdate1/account/search.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.06,
                ),
                Text(
                  'Друзья',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                Container(
                  height: 1.0,
                  width: size.width,
                  color: Colors.black45,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Chat()));
              },
              child: Card(
                color: AppColors.fourColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: SizedBox(
                    height: size.height * 0.14,
                    width: size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.04,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            CircleAvatar(
                              backgroundImage:
                              AssetImage("assets/images/dogs.jpg"),
                              radius: size.height * 0.05,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.04,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text(
                              'Алексей В',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              'Вы подружились недавно ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.09,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, color: AppColors.fifeColor,)
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Card(
              color: AppColors.fourColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: SizedBox(
                  height: size.height * 0.14,
                  width: size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/images/dogs.jpg"),
                            radius: size.height * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            'Алексей В',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Вы подружились недавно ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.09,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.circle, color: AppColors.fifeColor,)
                        ],
                      )
                    ],
                  )),
            ),
            Card(
              color: AppColors.fourColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: SizedBox(
                  height: size.height * 0.14,
                  width: size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/images/dogs.jpg"),
                            radius: size.height * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            'Алексей В',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Вы подружились недавно ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.09,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Icon(Icons.circle, color: AppColors.fifeColor,)
                        ],
                      )
                    ],
                  )),
            ),
            Card(
              color: AppColors.fourColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: SizedBox(
                  height: size.height * 0.14,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/images/dogs.jpg"),
                            radius: size.height * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            'Алексей В',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Вы подружились недавно ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.09,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Icon(Icons.circle, color: AppColors.fifeColor,)
                        ],
                      )
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }
}

/*
Column(
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
 */
