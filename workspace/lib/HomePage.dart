import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:time_planner/time_planner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'Alarm.dart';
import 'BoardList_Main.dart';
import 'BoardList_Search_1.dart';
import 'ContactDirectoryProffessor.dart';
import 'Faq.dart';
import 'UniversityMap.dart';

class HomePage extends StatefulWidget {
  String userEmail;
  String keywords;
  String noticeLink;

  HomePage(this.keywords, this.noticeLink, this.userEmail, {Key? key})
      : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePage(keywords, noticeLink, userEmail);
}

class _MyHomePage extends State<HomePage> {
  String userEmail;
  String keywords;
  String noticeLink;

  _MyHomePage(this.keywords, this.noticeLink, this.userEmail);

  List<TimePlannerTask> tasks = [];
  List<String> timeList = [];
  int timeDB_length= 0;
  List<String> timeDB_Name = [];
  List<String> timeDB_Code = [];
  List<String> timeDB_Day = [];
  List<int> timeDB_Start= [];
  List<int> timeDB_End = [];


  void _addObject(BuildContext context, String lecture, String lectureDay,String classCode,
      int start_hour, int end_hour) {
    print(userEmail);
    List<Color?> colors = [
      const Color(0xff94B49F),
      const Color(0xffCEE5D0),
      const Color(0xffFCF8E8),
      const Color(0xffECB390),
      const Color(0xffFDFDBD),
      const Color(0xffC8FFD4),
      const Color(0xffB8E8FC),
      const Color(0xffB1AFFF),

    ];

    List days = [1, 2, 3, 4, 5];
    int day = 0;
    print(lectureDay);
    if (lectureDay=="월") {
      day = 0;
    } else if (lectureDay=="화") {
      day = 1;
    } else if (lectureDay=="수") {
      day = 2;
    } else if (lectureDay=="목") {
      day = 3;
    } else if (lectureDay== "금") {
      day = 4;
    }
    // List<Day>days = [];

    setState(() {
      tasks.add(
        TimePlannerTask(
          color: colors[Random().nextInt(colors.length)],
          // dateTime: TimePlannerDateTime(
          // day: Random().nextInt(5),
          // hour: Ra
          // ndom().nextInt(18) + 6,
          // minutes: Random().nextInt(60)),
          dateTime: TimePlannerDateTime(
              day: day, //생성범위 5일
              hour: (start_hour ~/ 100) + 1, //범위 9시~18시까지
              minutes: start_hour % 100),

          minutesDuration: ((end_hour ~/ 100) * 60 + end_hour % 100) -
              ((start_hour ~/ 100) * 60 + start_hour % 100),
          //15분~165분크기만큼 랜덤생성
          daysDuration: 1,
          //5일중 하루칸생성
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(' time planner 를 클릭하셨습니다.')));
          },
          child: Text(
            lecture,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      );
    });
    // tasks.toSet();

    // ScaffoldMessenger.of(context)
    //     .showSnackBar(const SnackBar(content: Text('시간표가 추가되었습니다')));
  }
  void time_db(BuildContext context)
  {
    //    _addObject(context, "d", "금", "ky101", 1000, 1200);
    //시간표DB추가
    //DB 시간표 불러오기
    dbTime() async{
      return FirebaseFirestore.instance.collection(
          "/userInformation/$userEmail/timeTable").where("대표시간표", isEqualTo: true).get();
    }
    dbTime().then((val){
      var datas = val.docs.elementAt(0).data();
      List<dynamic> timeDB = datas["강의목록"];
      timeDB_length = timeDB.length;
      for(int i=0; i<timeDB.length;i++)
      {
        String lecture = timeDB[i].toString();
        List<String> lecturetemp1 = lecture.split(':');
        String lectureName = lecturetemp1[0];
        timeDB_Name.add(lectureName);
        String lecturetemp22 = lecturetemp1[1].toString();
        List<String> lecturetemp3 = lecturetemp22.split('/');
        String lectureCode = lecturetemp3[0];
        timeDB_Code.add(lectureCode);
        String lecturetemp4 = lecturetemp3[1].toString();
        List<String> lecturetemp = lecturetemp4.split('(');
        String lectureDay = lecturetemp[0];
        timeDB_Day.add(lectureDay);
        String lecturetemp44 = lecturetemp[1].toString();
        List<String> lecturetemp5 = lecturetemp44.split('~');
        int lectureStart = int.parse(lecturetemp5[0].toString());
        timeDB_Start.add(lectureStart);
        String lecturetemp6 = lecturetemp5[1].toString();
        List<String> lecturetemp7 = lecturetemp6.split(')');
        int lectureEnd = int.parse(lecturetemp7[0].toString());
        timeDB_End.add(lectureEnd);
      }
    });
  }

  //요일 색깔
  Color dayColor(String currentDay,String day)
  {
    if(day == currentDay)
      return Color(0xff995689);
    else
      return Color(0xff111111);
  }


  @override
  Widget build(BuildContext context) {
//크기
    DateTime? currentBackPressTime;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;
    int iconSize = 24;

    //시간
    initializeDateFormatting();
    String day = DateFormat.E('ko_KR').format(DateTime.now());


    time_db(context);
    for (int i=0;i<timeDB_length;i++)
    {
      _addObject(context,timeDB_Name[i], timeDB_Day[i], timeDB_Code[i], timeDB_Start[i], timeDB_End[i]);
    }
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
      appBar: AppBar(
        title: Text(
          '한모두모',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 20,
            color: const Color(0xff995689),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
              child: IconButton(
                padding: EdgeInsets.zero,
// 패딩 설정
                constraints: const BoxConstraints(),
// constraints
                icon: Icon(Icons.mail_outline),
                color: Colors.black.withOpacity(0.71),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Alarm(userEmail: userEmail)),
                  );
                },
              ),
              margin: const EdgeInsets.only(right: 20)),
        ],
        backgroundColor: Colors.white30,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//학사 공지사항
            Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: deviceWidth - 44,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
// color: const Color(0x91995689),
                      color: const Color(0xff995689),
                    ),
                  ),
                  child: Row(children: [
                    Container(
                      child: IconButton(
                          padding: EdgeInsets.zero,
// 패딩 설정
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(Icons.campaign, color: Colors.red)),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                    ),
                    SizedBox(
                        width: deviceWidth - 60 - iconSize - 18,
                        child: new InkWell(
                            child: new Text(
                              '$keywords',
                              overflow: TextOverflow.ellipsis,
                            ),
                            onTap: () => launchUrl(
                                Uri.parse(HSNOTICELINK + '$noticeLink'))
//onTap: () => print()
                        ))
                  ]),
                ),
              ),
            ),
// 학사일정 등 5개 바로가기
            Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: deviceWidth - 34,
                  height: 70,
                  child: Container(
//                     decoration: BoxDecoration(
// // color: const Color(0x21995689),
//                         border: Border.all(
//                           width: 2,
// // color: const Color(0x91995689),
//                           color: const Color(0xff995689),
//                         ),
//                         borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
//학사일정
                        Container(
                            child: SizedBox(
                              width: ((deviceWidth - 20) / 5) - 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x2f995689),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
// 패딩 설정
                                      constraints: const BoxConstraints(),
                                      onPressed: () async {
                                        const url =
                                            'https://www.hs.ac.kr/kor/4837/subview.do';
                                        if (await canLaunchUrlString(url)) {
                                          await launchUrlString(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      icon: Icon(Icons.event_available),
                                      color: Colors.black.withOpacity(0.71),
                                    ),
                                  ),
                                  Text(
                                    "학사일정",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              left: 0,
                            )),
//교내 전화번호
                        Container(
                            child: SizedBox(
                              width: ((deviceWidth - 20) / 5) - 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x2f995689),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
// 패딩 설정
                                      constraints: const BoxConstraints(),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ContactDirectoryProffessor()),
                                        );
                                      },
                                      icon: Icon(Icons.local_phone),
                                      color: Colors.black.withOpacity(0.71),
                                    ),
                                  ),
                                  Text("교내 전화번호",
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              left: 0,
                            )),
//도서관 좌석
                        Container(
                            child: SizedBox(
                              width: ((deviceWidth - 20) / 5) - 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x2f995689),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
// 패딩 설정
                                      constraints: const BoxConstraints(),
                                      onPressed: () async {
                                        const url =
                                            'http://203.252.18.66/EZ5500/SEAT/RoomStatus.aspx';
                                        if (await canLaunchUrlString(url)) {
                                          await launchUrlString(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      icon: Icon(Icons.chair_alt_outlined),
                                      color: Colors.black.withOpacity(0.71),
                                    ),
                                  ),
                                  Text("도서관 현황",
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              left: 0,
                            )),
//자주 찾는 질문
                        Container(
                            child: SizedBox(
                              width: ((deviceWidth - 20) / 5) - 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x2f995689),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
// 패딩 설정
                                      constraints: const BoxConstraints(),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Faq()),
                                        );
                                      },
                                      icon: Icon(Icons.help_outline),
                                      color: Colors.black.withOpacity(0.71),
                                    ),
                                  ),
                                  Text("자주 찾는 질문",
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              left: 0,
                            )),
//학교 한눈에 보기
                        Container(
                            child: SizedBox(
                              width: ((deviceWidth - 20) / 5) - 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x2f995689),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
// 패딩 설정
                                      constraints: const BoxConstraints(),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UniversityMap()),
                                        );
                                      },
                                      icon: Icon(Icons.location_city),
                                      color: Colors.black.withOpacity(0.71),
                                    ),
                                  ),
                                  Text("학교 건물 위치",
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              left: 0,
                            )),
                      ],
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(
                  top: 10,
                )),
            //시간표
            Expanded(child:Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: deviceWidth - 42,
                  height: deviceheight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0x3f000000),
                      ),
                    ),
                    child:TimePlanner(
                      startHour: 9,
                      endHour: 19,
                      style: TimePlannerStyle(
                        cellHeight: 40,
                        cellWidth: ((deviceWidth - 42)/6).round()-1,
                        showScrollBar: false,
                      ),
                      headers: [
                        TimePlannerTitle(
                          title: "월",
                          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: dayColor(day,"월")),
                        ),
                        TimePlannerTitle(
                          // date: "3/11/2021",
                          title: "화",
                          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: dayColor(day,"화") ),
                        ),
                        TimePlannerTitle(
                          // date: "3/12/2021",
                          title: "수",
                          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: dayColor(day,"수")),
                        ),
                        TimePlannerTitle(
                          // date: "3/13/2021",
                          title: "목",
                          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: dayColor(day,"목") ),
                        ),
                        TimePlannerTitle(
                          // date: "3/14/2021",
                          title: "금",
                          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: dayColor(day,"금")),
                        ),
                      ],
                      tasks: tasks,
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(
                  top: 1,
                )),)

          ]),
    ));
  }
}