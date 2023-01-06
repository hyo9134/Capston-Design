import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/BoardList_Search.dart';
import 'package:hanmodumo/BoardWriteFlutterLayout.dart';
import 'package:hanmodumo/Board_Search.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/LectureList.dart';
import 'package:hanmodumo/Recruit.dart';
import 'package:hanmodumo/Scrap.dart';
import 'package:hanmodumo/Settings.dart';


import 'Board_Search_1.dart';
import 'BookMark.dart';
import 'BookMark_Lecture.dart';
import 'TimeTable.dart';
//게시판 목록

class BoardList_Main extends StatelessWidget {
  var userEmail;

  BoardList_Main({
    Key ?key, required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    print("*******");
    print(userEmail);
    print("****");
    // return WillPopScope(    // <-  WillPopScope로 감싼다.
    //     onWillPop: () async {
    //       final value = await showDialog<bool>(
    //           context: context,
    //           builder: (context) {
    //             return AlertDialog(
    //               content: Text('앱을 종료할까요?'),
    //               actions: <Widget>[
    //                 ElevatedButton(
    //                   child: Text('아니오.'),
    //                   onPressed: () {
    //                     Navigator.of(context).pop(false);
    //                   },
    //                 ),
    //                 ElevatedButton(
    //                   child: Text('네. 종료합니다.'),
    //                   onPressed: () {
    //                     SystemNavigator.pop();
    //                   },
    //                 ),
    //               ],
    //             );
    //           });
    //
    //       return value == true;
    //     },
     return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '게시판',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 170.0, start: 39.0),
            Pin(size: 27.0, start: 74.0),
            child: Text(
              '스크랩 & 즐겨찾기',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),

          //스크랩 아이콘
          Pinned.fromPins(
              // Pin(size: 40.0, start: 10.0),
            Pin(start: 3.0, end: 350.0),
              Pin(size: 40.0, start: 122.0),//사이즈키우면 아래로감
              child: Icon(Icons.bookmark_border_outlined,size: 22,color: Colors.black54,
              ),
          ),
          //스크랩 버튼
          Pinned.fromPins(
              Pin(size: 125.0, start: 24.0),//size는 버튼 가로길이
              Pin(size: 27.0, start: 126.0),//start키우면 아래로감
              // Pin(size: 95.0, start: 39.0),
              // Pin(size: 27.0, start: 119.0),//버튼 세로크기, start클수록 아래로
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Scrap(userEmail: userEmail)),
                  );
                },
                child: Text("스크랩",
                    style: TextStyle(fontSize: 20.0)),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.7),
                  minimumSize: Size(50, 75),
                  primary: Colors.black.withOpacity(0.67), //글자색
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  fixedSize: Size.fromHeight(550),
                  // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                  //글자위치 변경
                ),
              )
          ),
          //즐겨찾기 아이콘
          Pinned.fromPins(
            // Pin(size: 40.0, start: 10.0),
            Pin(start: 3.0, end: 350.0),//y축
            Pin(size: 42.0, start: 167.0),//size키우면 아래로감
            child: Icon(Icons.star_border_outlined,size: 22,color: Colors.black54,
            ),
          ),
          //학과별즐겨찾기 버튼
          Pinned.fromPins(
              Pin(size: 190.0, start: 30.0),
              Pin(size: 27.0, start: 172.0),//버튼 세로크기, start클수록 아래로
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookMark(userEmail: userEmail)),
                  );
                },
                child: Text("학과별 즐겨찾기",
                    style: TextStyle(fontSize: 20.0)),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.7),
                  minimumSize: Size(50, 75),
                  primary: Colors.black.withOpacity(0.67), //글자색
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  fixedSize: Size.fromHeight(550),
                  // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                  //글자위치 변경
                ),
              )
          ),
          //즐겨찾기 아이콘
          Pinned.fromPins(
            // Pin(size: 40.0, start: 10.0),
            Pin(start: 3.0, end: 350.0),//y축
            Pin(size: 44.0, start: 205.0),//size키우면 아래로감
            child: Icon(Icons.star_border_outlined,size: 22,color: Colors.black54,
            ),
          ),
          /////////////////////////////////////////////////////////버튼2
          //강의별즐겨찾기 버튼
          Pinned.fromPins(
              Pin(size: 190.0, start: 30.0),
              Pin(size: 27.0, start: 212.0),//버튼 세로크기, start클수록 아래로
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookMark_Lecture(userEmail: userEmail)),
                  );
                },
                child: Text("강의별 즐겨찾기",
                    style: TextStyle(fontSize: 20.0)),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.7),
                  minimumSize: Size(50, 75),
                  primary: Colors.black.withOpacity(0.67), //글자색
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  fixedSize: Size.fromHeight(550),
                  // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                  //글자위치 변경
                ),
              )
          ),
          ////////////////////////////////////////
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, start: 106.0),
            child: SvgPicture.string(
              _svg_ei84yz,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, start: 39.0),
            Pin(size: 27.0, middle: 0.4240),//middle 커질수록내려감
            child: Text(
              '게시판',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.4559),
            child: SvgPicture.string(
              _svg_fr6je3,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 27.0),
            Pin(size: deviceheight/20, middle: deviceheight/1400),//size는 버튼크기 middle커지면위로
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 145.0, start: 34.0),
                  Pin(start: 3.0, end: 4.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BoardList_Search(userEmail: userEmail)),
                      );
                    },
                    child: Text("학과별 게시판",
                        style: TextStyle(fontSize: 20.0)),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0.5),
                      minimumSize: Size(50, 75),
                      primary: Colors.black.withOpacity(0.67), //글자색
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //게시판아이콘4
          Pinned.fromPins(
    Pin(start: 3.0, end: 350.0),
    Pin(size: deviceheight/20, middle: deviceheight/998),
            // Pin(size: 73.0, middle: 0.0015),
            // Pin(size: deviceheight/1.28, end: deviceheight/1.3),//end작아질수록 내려감
              child: const Icon(Icons.circle_rounded,size: 13,color: Colors.black45,)

          ),
          //게시판아이콘1
          Pinned.fromPins(
              Pin(start: 3.0, end: 350.0),
              Pin(size: deviceheight/20, middle: deviceheight/1400),//middle이 y축커질수록 아래로
              child: const Icon(Icons.circle_rounded,size: 13,color: Colors.black45,)

          ),
          //게시판아이콘2
          Pinned.fromPins(
              Pin(start: 3.0, end: 350.0),
              Pin(size: deviceheight/20, middle: deviceheight/1240),//middle이 y축 커질수록 내려감
              child: const Icon(Icons.circle_rounded,size: 13,color: Colors.black45,)

          ),
//게시판아이콘3
          Pinned.fromPins(
              Pin(start: 3.0, end: 350.0),
              Pin(size: deviceheight/20, middle: deviceheight/1110),//middle이 y축 커질수록 내려감
              child: const Icon(Icons.circle_rounded,size: 13,color: Colors.black45,)

          ),
          Pinned.fromPins(
            Pin(start: 7.0, end: 27.0),
            Pin(size: deviceheight/20, middle: deviceheight/1240),//middle이 y축커질수록 아래로

            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 150.0, start: 34.0),
                    Pin(start: 3.0, end: 4.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LectureList(userEmail: userEmail,)),
                        );
                      },
                      child: Text("강의별 게시판",
                          style: TextStyle(fontSize: 20.0)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0.5),
                        minimumSize: Size(50, 75),
                        primary: Colors.black.withOpacity(0.67), //글자색
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        fixedSize: Size.fromHeight(550),
                        // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                        //글자위치 변경
                      ),
                    )
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 7.0, end: 27.0),
            Pin(size: deviceheight/20, middle: deviceheight/1110),//middle이 y축 커질수록 내려감
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 124.0, start: 40.0),//가로
                    Pin(start: 5.0, end: 4.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board_Search(userEmail: userEmail)),
                        );
                      },
                      child: Text("자유 게시판",
                          style: TextStyle(fontSize: 20.0)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0.5),
                        minimumSize: Size(50, 75),
                        primary: Colors.black.withOpacity(0.67), //글자색
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        fixedSize: Size.fromHeight(550),
                        // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                        //글자위치 변경
                      ),
                    )
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 7.0, end: 27.0),
            Pin(size: deviceheight/20, middle: deviceheight/998),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 140.0, start: 40.0),
                    Pin(start: 3.0, end: 4.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board_Search_1(userEmail: userEmail)),
                        );
                      },
                      child: Text("기숙사 게시판",
                          style: TextStyle(fontSize: 20.0)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0.5),
                        minimumSize: Size(50, 75),
                        primary: Colors.black.withOpacity(0.67), //글자색
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        fixedSize: Size.fromHeight(50),
                        // : 각진버튼, CircleBorder : 동그라미버튼, StadiumBorder : 모서리가 둥근버튼,
                        //글자위치 변경
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}


const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fr6je3 =
    '<svg viewBox="27.0 357.0 374.0 1.0" ><path transform="translate(27.0, 357.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';