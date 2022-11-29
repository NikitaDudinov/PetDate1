import 'package:flutter/material.dart';

import '../mywidgets/appcolors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

List _Cards = ['pitomec','jopa' ,'kak dela', 'hsdgkc'];

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
            itemCount: _Cards.length,
            itemBuilder: (BuildContext, int index)
          {
            return Dismissible(
                key: Key(_Cards[index]),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Card(
                      color: AppColors.twoColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: SizedBox(
                        height: size.height * 0.7,
                        width: size.width * 0.8,
                        child: Column(
                          children: [
                            //Image(image: AssetImage("assets/images/dogs.jpg"), width: 120, height: 100, ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height * 0.55,
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
                              _Cards[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: size.height * 0.0008,
                            ),
                            Text(
                              _Cards[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ));
          }
          )
      ),
    );
  }
}


/* Card(
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
               ),*/