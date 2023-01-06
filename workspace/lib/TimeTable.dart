import 'dart:async';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:time_planner/time_planner.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'Timetable.dart';

//시간표 페이지
//시간 저장 양식은 강의명:교과목코드/요일(시작시간~끝나는시간)

FirebaseFirestore Firestore = FirebaseFirestore.instance;
// 컬렉션명
final String COlNAME = "lectureList22_2";

// 필드명
final String LECTURE_NAME = "교과목명";
final String LECTURE_CODE = "교과목코드";
final String LECTURE_DAY = "교시";
final String LECTURE_GROUP = "분반";
final String LECTURE_PROFESSOR = "교수";

//텍스트 controller
TextEditingController _newTimeTableTitleCon = TextEditingController();
TextEditingController _newLectureCon = TextEditingController();
TextEditingController _newDayCon = TextEditingController();
TextEditingController _newStartTimeCon = TextEditingController();
TextEditingController _newEndTimeCon = TextEditingController();
TextEditingController _newSearchCon = TextEditingController();



void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MaterialColor white = const MaterialColor(
      0xFFFFFFFF,
      const <int, Color>{
        50: const Color(0xFFFFFFFF),
        100: const Color(0xFFFFFFFF),
        200: const Color(0xFFFFFFFF),
        300: const Color(0xFFFFFFFF),
        400: const Color(0xFFFFFFFF),
        500: const Color(0xFFFFFFFF),
        600: const Color(0xFFFFFFFF),
        700: const Color(0xFFFFFFFF),
        800: const Color(0xFFFFFFFF),
        900: const Color(0xFFFFFFFF),
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TimeTable(title: '시간표', userEmail: ""),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
//-----------------------------------------------------------------

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key, required this.title, required this.userEmail})
      : super(key: key);

  final String title;
  final String userEmail;

  @override
  _MyHomePageState createState() => _MyHomePageState(userEmail);
}

class _MyHomePageState extends State<TimeTable> {
  List<TimePlannerTask> tasks = [];
  List<String> timeList = [];
  int timeDB_length = 0;
  List<String> timeDB_Name = [];
  List<String> timeDB_Code = [];
  List<String> timeDB_Day = [];
  List<int> timeDB_Start = [];
  List<int> timeDB_End = [];
  String name = "";
  final String userEmail;

  //시간표 이름
  String timeTableName = "시간표";
  List<String> timeTableNameList = [];
  String TTName="기본시간표";

  //필드명
  final String time_table_title = "시간표제목";
  final String YEAR = "년도";
  final String TERM = "학기";
  final String time_list = "강의목록";
  final String main_time_table = "대표시간표";

  //텍스트 controller
  TextEditingController _timeTableNameCon = TextEditingController();

  // String time_code = "교과목코드";
  // String time_list = "시간표시간";

  // db 업데이트
  void updateDocument(
      List<String> timeList, bool mainTimetable) {
    print(timeList);
    FirebaseFirestore.instance.collection(
        "/userInformation/$userEmail/timeTable")
        .get()
        .then((value) => value.docs.last.reference.update({time_list:timeList}));
  }

  _MyHomePageState(this.userEmail);


  void _addObject(BuildContext context, String lecture, String lectureDay,
      String classCode,
      int start_hour, int end_hour) {
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
    if (lectureDay == "월") {
      day = 0;
    } else if (lectureDay == "화") {
      day = 1;
    } else if (lectureDay == "수") {
      day = 2;
    } else if (lectureDay == "목") {
      day = 3;
    } else if (lectureDay == "금") {
      day = 4;
    }
    // List<Day>days = [];

    setState(() {
      timeList.add(
          "${lecture}:${classCode}/${lectureDay}(${start_hour}~${end_hour})");
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
            print("시간표를 제거했습니다.");
            _removeObject(context, lecture,lectureDay, classCode, start_hour,end_hour);
            // updateDocument(timeList, true);

          },
          child: Text(
            lecture,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      );
    });

    // ScaffoldMessenger.of(context)
    //     .showSnackBar(const SnackBar(content: Text('시간표가 추가되었습니다')));
  }
  void _removeObject(BuildContext context, String lecture, String lectureDay,
      String classCode,
      int start_hour, int end_hour) {
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
    if (lectureDay == "월") {
      day = 0;
    } else if (lectureDay == "화") {
      day = 1;
    } else if (lectureDay == "수") {
      day = 2;
    } else if (lectureDay == "목") {
      day = 3;
    } else if (lectureDay == "금") {
      day = 4;
    }
    // List<Day>days = [];

    setState(() {
      timeList.remove(
          "${lecture}:${classCode}/${lectureDay}(${start_hour}~${end_hour})");
      tasks.remove(
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

          },
          child: Text(
            lecture,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      );
    });

    // ScaffoldMessenger.of(context)
    //     .showSnackBar(const SnackBar(content: Text('시간표가 추가되었습니다')));
  }

  void time_db(BuildContext context) {
    //    _addObject(context, "d", "금", "ky101", 1000, 1200);
    //시간표DB추가
    //DB 시간표 불러오기

    ValueNotifier<int> _counter = ValueNotifier<int>(0);
    dbTime() async {
      return Firestore.collection(
          "/userInformation/$userEmail/timeTable").where(
          "대표시간표", isEqualTo: true).get();
    }
    dbTime().then((val) {
      print("hi");
      var datas = val.docs.elementAt(0).data();
      List<dynamic> timeDB = datas["강의목록"];
      timeDB_length = timeDB.length;

      for (int i = 0; i < timeDB.length; i++) {
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
  Color dayColor(String currentDay, String day) {
    if (day == currentDay)
      return Color(0xff995689);
    else
      return Color(0xff111111);
  }

  @override
  Widget build(BuildContext context) {
    //하단 버튼 오픈
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);

    //메뉴바 오픈
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<
        ScaffoldState>();

    //시간표
    String timeTableTitle = "최종시간표";
    int year = 2022;
    String term = "2학기";

    double deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    double deviceheight = MediaQuery
        .of(context)
        .size
        .height;

    time_db(context);

    //시간
    initializeDateFormatting();
    String day = DateFormat.E('ko_KR').format(DateTime.now());


    for (int i = 0; i < timeDB_length; i++) {
      _addObject(context, timeDB_Name[i], timeDB_Day[i], timeDB_Code[i],
          timeDB_Start[i], timeDB_End[i]);
    }

    // Future<String?> _myFuture() async {
    //   await Future.delayed(const Duration(milliseconds: 300),(){
    //
    //     initState();
    //   });
    //   return 'Future completed';
    // }
    //
    // _myFuture().timeout(
    //   const Duration(milliseconds: 300),
    //   onTimeout: () =>
    //   'The process took too much time to finish. Please try again later',
    // );


    void showDocument(String documentID) {
      FirebaseFirestore.instance
          .collection(COlNAME)
          .doc(documentID)
          .get()
          .then((doc) {
        //showReadDocSnackBar(doc);
      });
    }

    // db 저장
    void addDocument(String timeTableTitle, int year, String term,
        List<String> timeList, bool mainTimetable) {
      FirebaseFirestore.instance.collection(
          "/userInformation/$userEmail/timeTable").add({
        time_table_title: timeTableTitle,
        YEAR: year,
        TERM: term,
        time_list: timeList,
        main_time_table: mainTimetable
      });
    }


//사용자 정의 시간 추가
    void FlutterDialog() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //Dialog Main Title
              title: Row(
                children: <Widget>[
                  new Text("시간표 추가"),
                ],
              ),
              //
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '강의명',
                    ),
                    controller: _newLectureCon,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '요일',
                    ),
                    controller: _newDayCon,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '시작시간',
                    ),
                    controller: _newStartTimeCon,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '종료시간',
                    ),
                    controller: _newEndTimeCon,
                  ),
                ],
              ),
              actions: <Widget>[
                new ElevatedButton(
                  child: new Text("닫기"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                new ElevatedButton(
                  child: new Text("추가"),
                  onPressed: () {
                    _addObject(
                      context,
                      _newLectureCon.text,
                      _newDayCon.text,
                      "학수코드",
                      int.parse(_newStartTimeCon.text),
                      int.parse(_newEndTimeCon.text),
                    );
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }

//학교 강의 시간 추가
    void FlutterDialogDB() {
      showBottomSheet(context: context, builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery
                .of(context)
                .size
                .height * .60,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Column(
                  children: <Widget>[
                    Row(children:<Widget>[
                      Flexible(
                          child: Container(child:TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '강의명검색',
                            ),
                            onChanged: (val) {
                              setState(() {
                                name = val;
                              });
                            },
                            controller: _newSearchCon,
                          ),)),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.black45,),
                        onPressed: () {
                          name="";
                          _newSearchCon.clear();
                          Navigator.of(context).pop();
                        },
                      ),
                    ]),
                    Stack(
                      children: <Widget>[
                        SingleChildScrollView(
                          primary: false,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 19,
                            runSpacing: 17,
                            children: [{}].map((itemData) {
                              // return Scaffold(
                              //   // width: 450.0,
                              //   // height: 400.0,
                              //   // child:
                              //   resizeToAvoidBottomInset: false,
                              //   body:
                              return SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width-20.0,
                                height: (MediaQuery
                                    .of(context)
                                    .size
                                    .height * .60)-80,
                                child: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection(COlNAME)
                                      .snapshots(),
                                  builder: (context, snapshots) {
                                    return (snapshots.connectionState ==
                                        ConnectionState.waiting)
                                        ? Center(
                                      child:
                                      CircularProgressIndicator(),
                                    )
                                        : ListView.builder(
                                        itemCount:
                                        snapshots.data!.docs.length,
                                        itemBuilder: (context, index) {
                                          var data = snapshots
                                              .data!.docs[index]
                                              .data()
                                          as Map<String, dynamic>;

                                          if (name.isEmpty) {
                                            return InkWell(
                                              // Read Document
                                              onTap: () {
                                                if (data[LECTURE_DAY] == "") {
                                                  print("없음");
                                                }
                                                else {
                                                  //데이터가 있을 시
                                                  if (data[LECTURE_DAY]
                                                      .length <=
                                                      16) {
                                                    //시간이 하나일때
                                                    _addObject(
                                                        context,
                                                        data[LECTURE_NAME],
                                                        data[LECTURE_DAY]
                                                            .substring(0, 1),
                                                        data["교과목코드"],
                                                        int.parse(
                                                            data[LECTURE_DAY]
                                                                .substring(
                                                                4, 6) +
                                                                data[LECTURE_DAY]
                                                                    .substring(
                                                                    7, 9)),
                                                        int.parse(data[
                                                        LECTURE_DAY]
                                                            .substring(
                                                            10, 12) +
                                                            data[LECTURE_DAY]
                                                                .substring(
                                                                13, 15)));
                                                  }
                                                  if (data[LECTURE_DAY]
                                                      .length >
                                                      16) {
                                                    //시간이 두 개 있지만 같은날 연강일때
                                                    if (data[LECTURE_DAY]
                                                        .substring(0, 1) ==
                                                        data[LECTURE_DAY]
                                                            .substring(
                                                            18, 19)) {
                                                      print(data[LECTURE_DAY]
                                                          .substring(
                                                          0, 1));
                                                      print(data[LECTURE_DAY]
                                                          .substring(
                                                          18, 19));
                                                      print("시간");
                                                      print(data[
                                                      LECTURE_DAY]
                                                          .substring(
                                                          4, 6) +
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              7, 9));
                                                      print(data[
                                                      LECTURE_DAY]
                                                          .substring(
                                                          28, 30) +
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              31, 33));
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              18, 19),
                                                          data["교과목코드"],
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              4, 6) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  7, 9)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              28, 30) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  31, 33)));
                                                    }
                                                    else {
                                                      //시간이 두 개 있지만 다른날 일때
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              0, 1),
                                                          data["교과목코드"],
                                                          int.parse(
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  4, 6) +
                                                                  data[LECTURE_DAY]
                                                                      .substring(
                                                                      7, 9)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              10, 12) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  13, 15)));
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              18, 19),
                                                          data["교과목코드"],
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              22, 24) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  25, 27)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              28, 30) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  31, 33)));
                                                    }
                                                  }
                                                }

                                                Navigator.pop(context);
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) => Board_page(boardName, colName, data["게시글제목"], data["게시글내용"], data["수정일"])),
                                                // );
                                              },
                                              child: Container(
                                                padding:
                                                const EdgeInsets.all(
                                                    8),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          data[LECTURE_NAME],
                                                          style:
                                                          TextStyle(
                                                            fontFamily:
                                                            'Arial',
                                                            fontSize: 17,
                                                            color: const Color(
                                                                0xff000000),
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                          ),
                                                        ),
                                                        // Text(
                                                        //   dt.toString(),
                                                        //   style: TextStyle(color: Colors.grey[600]),
                                                        // )
                                                      ],
                                                    ),
                                                    Container(
                                                        alignment:
                                                        Alignment(
                                                            -1.0,
                                                            0.443),
                                                        //       child: SizedBox(
                                                        //         width: 183.0,
                                                        //         height: 17.0,
                                                        child: Text(
                                                          data[LECTURE_DAY] +
                                                              "\n" +
                                                              data[LECTURE_CODE] +
                                                              "-" +
                                                              data[
                                                              LECTURE_GROUP] +
                                                              "\n" +
                                                              data[LECTURE_PROFESSOR],
                                                          style:
                                                          TextStyle(
                                                            fontFamily:
                                                            'Arial',
                                                            fontSize: 13,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            );
                                          }
                                          //검색
                                          if (data[LECTURE_NAME]
                                              .toString()
                                              .toLowerCase()
                                              .contains(
                                              name.toLowerCase()) ||
                                              data[LECTURE_PROFESSOR]
                                                  .toString()
                                                  .toLowerCase()
                                                  .contains(
                                                  name.toLowerCase()) ||
                                              data[LECTURE_CODE]
                                                  .toString()
                                                  .toLowerCase()
                                                  .contains(
                                                  name.toLowerCase())) {
                                            return InkWell(
                                              onTap: () {
                                                if (data[LECTURE_DAY] == "") {
                                                  print("없음");
                                                }
                                                else {
                                                  //데이터가 있을 시
                                                  if (data[LECTURE_DAY]
                                                      .length <=
                                                      16) {
                                                    //시간이 하나일때
                                                    _addObject(
                                                        context,
                                                        data[LECTURE_NAME],
                                                        data[LECTURE_DAY]
                                                            .substring(0, 1),
                                                        data["교과목코드"],
                                                        int.parse(
                                                            data[LECTURE_DAY]
                                                                .substring(
                                                                4, 6) +
                                                                data[LECTURE_DAY]
                                                                    .substring(
                                                                    7, 9)),
                                                        int.parse(data[
                                                        LECTURE_DAY]
                                                            .substring(
                                                            10, 12) +
                                                            data[LECTURE_DAY]
                                                                .substring(
                                                                13, 15)));
                                                  }
                                                  if (data[LECTURE_DAY]
                                                      .length >
                                                      16) {
                                                    //시간이 두 개 있지만 같은날 연강일때
                                                    if (data[LECTURE_DAY]
                                                        .substring(0, 1) ==
                                                        data[LECTURE_DAY]
                                                            .substring(
                                                            18, 19)) {
                                                      print(data[LECTURE_DAY]
                                                          .substring(
                                                          0, 1));
                                                      print(data[LECTURE_DAY]
                                                          .substring(
                                                          18, 19));
                                                      print("시간");
                                                      print(data[
                                                      LECTURE_DAY]
                                                          .substring(
                                                          4, 6) +
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              7, 9));
                                                      print(data[
                                                      LECTURE_DAY]
                                                          .substring(
                                                          28, 30) +
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              31, 33));
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              18, 19),
                                                          data["교과목코드"],
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              4, 6) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  7, 9)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              28, 30) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  31, 33)));
                                                    }
                                                    else {
                                                      //시간이 두 개 있지만 다른날 일때
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              0, 1),
                                                          data["교과목코드"],
                                                          int.parse(
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  4, 6) +
                                                                  data[LECTURE_DAY]
                                                                      .substring(
                                                                      7, 9)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              10, 12) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  13, 15)));
                                                      _addObject(
                                                          context,
                                                          data[LECTURE_NAME],
                                                          data[LECTURE_DAY]
                                                              .substring(
                                                              18, 19),
                                                          data["교과목코드"],
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              22, 24) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  25, 27)),
                                                          int.parse(data[
                                                          LECTURE_DAY]
                                                              .substring(
                                                              28, 30) +
                                                              data[LECTURE_DAY]
                                                                  .substring(
                                                                  31, 33)));
                                                    }
                                                  }
                                                }

                                                Navigator.pop(context);
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) => Board_page(boardName, colName, data["게시글제목"], data["게시글내용"], data["수정일"])),
                                                // );
                                              },
                                              child: Container(
                                                padding:
                                                const EdgeInsets.all(
                                                    8),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          data[LECTURE_NAME],
                                                          style:
                                                          TextStyle(
                                                            fontFamily:
                                                            'Arial',
                                                            fontSize: 17,
                                                            color: const Color(
                                                                0xff000000),
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                          ),
                                                        ),
                                                        // Text(
                                                        //   dt.toString(),
                                                        //   style: TextStyle(color: Colors.grey[600]),
                                                        // )
                                                      ],
                                                    ),
                                                    Container(
                                                        alignment:
                                                        Alignment(
                                                            -1.0,
                                                            0.443),
                                                        //       child: SizedBox(
                                                        //         width: 183.0,
                                                        //         height: 17.0,
                                                        child: Text(
                                                          data[LECTURE_DAY] +
                                                              "\n" +
                                                              data[LECTURE_CODE] +
                                                              "-" +
                                                              data[
                                                              LECTURE_GROUP] +
                                                              "\n" +
                                                              data[LECTURE_PROFESSOR],
                                                          style:
                                                          TextStyle(
                                                            fontFamily:
                                                            'Arial',
                                                            fontSize: 13,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            );
                                          }
                                          return Container();
                                        });
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
        );
      });
    }
// 시간표 이름 바꾸기 다이어로그
    void TimeTableNameDialog() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //Dialog Main Title
              //
              content: TextField(
                onChanged: (value) {},
                controller: _timeTableNameCon,
                decoration: InputDecoration(hintText: timeTableName),
              ),
              actions: <Widget>[
                new ElevatedButton(
                  child: new Text("취소"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                new ElevatedButton(
                  child: new Text("변경"),
                  onPressed: () {
                    TTName = _timeTableNameCon.text;

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("변경되었습니다."),
                    ));

                    Navigator.pop(context);

                    _MyHomePageState(userEmail);
                  },
                ),
              ],
            );
          });
    }
    //새로운 시간표 추가
    void TimeTableAddNameDialog() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //Dialog Main Title
              //
              content: TextField(
                onChanged: (value) {},
                controller: _timeTableNameCon,
                decoration: InputDecoration(hintText: timeTableName),
              ),
              actions: <Widget>[
                new ElevatedButton(
                  child: new Text("취소"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                new ElevatedButton(
                  child: new Text("추가"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("추가되었습니다."),
                    ));
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }
    return WillPopScope( // <-  WillPopScope로 감싼다.
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
          resizeToAvoidBottomInset : false,
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(
              TTName,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
            ),
            leading: IconButton(icon: Icon(Icons.refresh),color: Colors.black, onPressed:() {
              for (int i=0;i<timeDB_length;i++)
              {
                _addObject(context,timeDB_Name[i], timeDB_Day[i], timeDB_Code[i], timeDB_Start[i], timeDB_End[i]);
              }
            }),

            centerTitle: true,
            actions: [
              Container(
                  child: IconButton(
                    padding: EdgeInsets.zero,
// 패딩 설정
                    constraints: const BoxConstraints(),
// constraints
                    icon: Icon(Icons.save),
                    color: Colors.black.withOpacity(0.71),
                    onPressed: () {
                      //
                      // //모든 시간표 삭제
                      // FirebaseFirestore.instance.collection(
                      //     "/userInformation/$userEmail/timeTable").where({time_list:timeList})
                      //     .get()
                      //     .then((value) => value.docs.last.reference.delete(),);
                      //저장
                      addDocument(timeTableTitle, year, term, timeList, true);
                      tasks=[];
                      timeList=[];

                    },
                  ),
                  margin: const EdgeInsets.only(right: 20)),
            ],
            backgroundColor: Colors.white30,
            elevation: 0,

          ),
          body: Center(
            child: TimePlanner(
              startHour: 9,
              endHour: 19,
              style: TimePlannerStyle(
                cellHeight: (deviceheight / 15).round(),
                cellWidth: ((deviceWidth - 42) / 6).round() - 1,
                showScrollBar: true,
              ),
              headers: [
                TimePlannerTitle(
                  title: "월",
                  titleStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dayColor(day, "월")),
                ),
                TimePlannerTitle(
                  // date: "3/11/2021",
                  title: "화",
                  titleStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dayColor(day, "화")),
                ),
                TimePlannerTitle(
                  // date: "3/12/2021",
                  title: "수",
                  titleStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dayColor(day, "수")),
                ),
                TimePlannerTitle(
                  // date: "3/13/2021",
                  title: "목",
                  titleStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dayColor(day, "목")),
                ),
                TimePlannerTitle(
                  // date: "3/14/2021",
                  title: "금",
                  titleStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dayColor(day, "금")),
                ),
              ],
              tasks: tasks,
            ),
          ),
          //메뉴바
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            openCloseDial: isDialOpen,
            backgroundColor: Colors.redAccent,
            overlayColor: Colors.grey,
            overlayOpacity: 0.5,
            spacing: 15,
            spaceBetweenChildren: 15,
            closeManually: true,
            children: [
              SpeedDialChild(
                  child: Icon(Icons.add),
                  label: '학교 강의 추가',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    FlutterDialogDB();
                    isDialOpen.value = false;
                  }),
              SpeedDialChild(
                  child: Icon(Icons.add),
                  label: '사용자 정의 시간 추가',
                  onTap: () {
                    FlutterDialog();
                    isDialOpen.value = false;
                  }),
            ],
          ),
        ));
  }
}