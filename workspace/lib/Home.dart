import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'package:hanmodumo/BoardView.dart';
import 'package:hanmodumo/Alarm.dart';
import 'package:hanmodumo/Board_Search.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'ContactDirectoryProffessor.dart';
import 'Faq.dart';
import 'HomePage.dart';
import 'Recruit.dart';
import 'Schedule.dart';
import 'Settings.dart';

import 'UniversityMap.dart';
import 'main.dart';
import 'TimeTable.dart';

String HSNOTICELINK = "https://www.hs.ac.kr";

class Home extends StatefulWidget {

  var userEmail;
  Home(
      {keywords, noticeLink, Key? key, required this.userEmail})
      : super(key: key);


  @override
  State<Home> createState() => _MyPageState(keywords!, noticeLink!,this.userEmail);
}


class _MyPageState extends State<Home> {
  int _currentIndex =2;
  String userEmail;
  String keywords;
  String noticeLink;
  _MyPageState(this.keywords, this.noticeLink, this.userEmail);
  List<Widget> _screens() =>
      [
        BoardList_Main(userEmail:userEmail),
        TimeTable(title: "시간표",userEmail: userEmail),
        HomePage(keywords,noticeLink,userEmail),
        Recruit(userEmail: userEmail),
        Settings(userEmail: userEmail),
      ];

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime; // 상태 위젯 상태 변수로 선언
    final List<Widget> screens = _screens();

    return WillPopScope(    // <-  WillPopScope로 감싼다.
        onWillPop: () async {
          final value = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('앱을 종료할까요?'),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text('아니오.'),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                    ),
                    ElevatedButton(
                      child: Text('네. 종료합니다.'),
                      onPressed: () {
                       SystemNavigator.pop();
                      },
                    ),
                  ],
                );
              });

          return value == true;
        },
        child: Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff995689),
        unselectedItemColor: const Color(0x4f000000),
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label:'게시판',
            icon: Icon(Icons.format_list_bulleted_outlined),
          ),
          BottomNavigationBarItem(
            label:'시간표',
            icon: Icon(Icons.table_chart_outlined),
          ),
          BottomNavigationBarItem(
            label:'홈',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label:'소모임',
            icon: Icon(Icons.groups_outlined),
          ),
          BottomNavigationBarItem(
            label:'설정',
            icon: Icon(Icons.settings_outlined),
          ),
        ],
      ),
    ));

  }
}