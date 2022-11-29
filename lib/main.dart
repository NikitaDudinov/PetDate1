import 'package:flutter/material.dart';
import 'package:petdate1/registration/Registration.dart';
import 'package:petdate1/mywidgets/appcolors.dart';
import 'package:petdate1/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petdate1/registration/vxod.dart';
import 'repository/repository.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      lazy: false,
      create: (BuildContext context) => Repository(),
      child: MultiBlocProvider(
        providers: [
          /*BlocProvider(
            create: (BuildContext context) =>
                UserCubit(repository: context.read<Repository>()),
          ),*/
          BlocProvider<AppCubit>(
            create: (BuildContext context) => AppCubit(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dogs.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child:
          Column(
          children: [
            SizedBox(
              height: size.height * 0.12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pets_sharp,
                  size: 40,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  'PetDate',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.50,
            ),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Registration()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white70),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                child: Text('Создать аккаунт'),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Vxod()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder(side: BorderSide(color: AppColors.myColor))),
                  backgroundColor: MaterialStateProperty.all(AppColors.myColor)
                ),
                child: Text('Войти'),
              ),
            ),
          ],
        ),)
      ),
    ));
  }
}
