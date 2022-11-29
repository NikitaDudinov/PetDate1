import 'package:flutter/material.dart';
import 'package:petdate1/account/maps.dart';
import 'package:petdate1/account/messages.dart';
import 'package:petdate1/account/search.dart';
import 'profile.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _currentTabIndex = 3;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[Maps(), Search(), Messages(), Profile()];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on_outlined,
            size: 34,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 34,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.maps_ugc_sharp,
            size: 34,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.pets_sharp,
            size: 34,
          ),
          label: ''),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}

//Text(context.read<AppCubit>().state.login),
