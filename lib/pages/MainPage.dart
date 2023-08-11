import 'package:flutter/material.dart';
import 'package:syno_ds/pages/MainSubPage/HomePage.dart';
import 'package:syno_ds/pages/MainSubPage/SettingPage.dart';
import 'package:syno_ds/pages/MainSubPage/TaskAddPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _pageIdx = 1;

  final List<Widget> _pageList = <Widget>[
    const TaskAddPage(),
    const HomePage(),
    const SettingPage()
  ];

  void _onNavBarTapped(int idx) {
    setState(() {
      _pageIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: (
          SafeArea(
            child: _pageList[_pageIdx]
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIdx,
          onTap: _onNavBarTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add Task"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting"
            )
          ]
        ),
      )
    );
  }
}