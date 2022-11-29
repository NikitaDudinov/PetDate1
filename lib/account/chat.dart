import 'package:flutter/material.dart';

import '../mywidgets/appcolors.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Row(
            children: [Text('Миньоны, почему вы не сделали бэк?')],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Так получилось')],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [Text('Что получилось?')],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Мы устали начальниха')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Спать хотели')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Очень')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Мозг не думал')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('А мы вместе с ним')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Не ставьте плохую оценку')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Начальниха')],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [Text('Хорошо, но вы должны это сделать к след паре')],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Без проблем начальниха')],
          ),
          SizedBox(
            height: 250,
          ),
          Column(
            children:
            <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TextField(
                  onChanged: (text) {
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_up_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.twoColor,
                  ),
                ),
              ),

            ],
          )
        ],
      )),
    );
  }
}
