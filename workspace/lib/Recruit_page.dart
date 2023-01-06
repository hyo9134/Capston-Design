import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/ChatPage.dart';
import 'package:intl/intl.dart';
//번개 모집 글 내용보는 페이지



class Recruit_page extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  // 컬렉션명
  final String colName = "recruitQuick";

  // 필드명
  final String TITLE = "제목";
  final String DESCRIPTION = "설명";
  final String DATE_CREATED = "시간";
  final String CONDITION = "조건";
  final String MAXIMUM_NUMBER = "최대인원";
  final String CURRENT_NUMBER = "현재인원";
  final String MEMBER = "회원고유번호";

  //데이터
  final String dTitle; //제목
  final String dCondition; //조건
  final int dMax; //최대인원
  final int dCurrent; //현재인원
  final String dDescription; //내용
  final Timestamp dTime;
  final String boardName;//번개모집, 스터디모집

  TextEditingController _newTitleCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _newConditionCon = TextEditingController();
  TextEditingController _newMNCon = TextEditingController();
  TextEditingController _newCNCon = TextEditingController();

  var userEmail;

  // 문서 생성 (Create)
  void createDoc(String title, String content, String condition, int max,
      int min, String userEmail) {
    FirebaseFirestore.instance.collection(colName).add({
      TITLE: title,
      DESCRIPTION: content,
      CONDITION: condition,
      MAXIMUM_NUMBER: max,
      CURRENT_NUMBER: min,
      DATE_CREATED: Timestamp.now(),
      MEMBER: userEmail
    });
  }

  Recruit_page(
      this.boardName,
    this.dTitle,
    this.dCondition,
    this.dMax,
    this.dCurrent,
    this.dDescription,
    this.dTime, {
    Key? key, this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date =
        DateTime.fromMicrosecondsSinceEpoch(dTime.microsecondsSinceEpoch);
    String dtimeformat = DateFormat('yy/MM/dd HH:mm').format(date);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //뒤로가기
          Container(
            child: Row(children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_outlined),
                  color: Colors.black.withOpacity(0.71),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                ),
                margin: const EdgeInsets.only(left: 10.0),
              ),
              Container(
                child: Text(
                  boardName,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 20,
                    color: const Color(0xff995689),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                margin: const EdgeInsets.only(left: 110.0),
              )
            ]),
            // padding: const EdgeInsets.fromLTRB(8.0,20.0,0,0),
            margin: const EdgeInsets.only(top: 30),
          ),
          Container(
              child: Row(children: [
            Container(
              child: IconButton(
                icon: Icon(Icons.face),
                color: Colors.black.withOpacity(0.71),
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
              margin: const EdgeInsets.only(left: 18.0),
            ),
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Container(
                child: Text(
                  '익명',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 12,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
              ),
              Container(
                child: Text(
                  dtimeformat,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 9,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
              )
            ]))
          ])),
          Container(
            child: Text(
              dTitle,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
            ),
            // padding: const EdgeInsets.fromLTRB(40,90,0,0),
            margin: const EdgeInsets.only(left: 30,top:10),
          ),

          Container(
            child: Text(
              '조건 : $dCondition',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
            ),
            // padding: const EdgeInsets.fromLTRB(40,135.0,0,0),
            margin: const EdgeInsets.only(top: 15, left: 30),
          ),
          Container(
            child: Text(
              '인원 : $dCurrent/$dMax',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
            ),
            // padding: const EdgeInsets.fromLTRB(40,165,0,0),
            margin: const EdgeInsets.only(top: 15, left: 30),
          ),
          Container(
            width: 340,
            child: Text(
              dDescription,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff000000),
              ),
            ),
            margin: const EdgeInsets.only(top: 15, left: 30),
          ),
          //제출버튼
          // Pinned.fromPins(
          //     Pin(start: 27.0, end: 27.0),
          //     Pin(size: 39.0, end: 40.0),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff995689)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage(userEmail: userEmail)),);
                },
                child: Text("참가"),
              ),
            ),
            margin: const EdgeInsets.only(top: 100),
          ),

          // Pinned.fromPins(
          //     Pin(size: 150.0, start: 40.0),
          //     Pin(size: 23.0, start:250),

          //보라색 레이아웃
          // Pinned.fromPins(
          //   Pin(start: 27.0, end: 27.0),
          //   Pin(size: 500.0, start: 75.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       border: Border.all(width: 3.0, color: const Color(0x73d8b9d2)),
          //     ),
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(start: 27.0, end: 27.0),
          //   Pin(size: 1.0, start: 125.0),
          //   child: SvgPicture.string(
          //     _svg_fmuelq,
          //     allowDrawingOutsideViewBox: true,
          //     fit: BoxFit.fill,
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(start: 27.0, end: 27.0),
          //   Pin(size: 1.0, start: 225.0),
          //   child: SvgPicture.string(
          //     _svg_tpu2j6,
          //     allowDrawingOutsideViewBox: true,
          //     fit: BoxFit.fill,
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(start: 27.0, end: 27.0),
          //   Pin(size: 1.0, start: 225.0),
          //   child: SvgPicture.string(
          //     _svg_tpu2j6,
          //     allowDrawingOutsideViewBox: true,
          //     fit: BoxFit.fill,
          //   ),
          // ),
        ],
      ),
    );
  }
}

const String _svg_fmuelq =
    '<svg viewBox="27.0 167.0 374.0 1.0" ><path transform="translate(27.0, 167.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tpu2j6 =
    '<svg viewBox="27.0 289.0 374.0 1.0" ><path transform="translate(27.0, 289.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
