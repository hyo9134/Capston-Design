import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/validators.dart';
//소모임 스터디 글작성페이지
class RecruitWrite_Study extends StatelessWidget {

  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  // 컬렉션명
  final String colName = "recruitStudy";

  // 필드명
  final String TITLE = "제목";
  final String DESCRIPTION  = "설명";
  final String DATE_CREATED = "시간";
  final String CONDITION = "조건";
  final String MAXIMUM_NUMBER = "최대인원";
  final String CURRENT_NUMBER = "현재인원";
  final String MEMBER = "회원고유번호";

  TextEditingController _newTitleCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _newConditionCon = TextEditingController();
  TextEditingController _newMNCon = TextEditingController();
  TextEditingController _newCNCon = TextEditingController();

  // 문서 생성 (Create)
  void createDoc(String title, String content, String condition, int max,
      int min,String userEmail) {
    FirebaseFirestore.instance.collection(colName).add({
      TITLE: title,
      DESCRIPTION: content,
      CONDITION:condition,
      MAXIMUM_NUMBER: max,
      CURRENT_NUMBER: min,
      DATE_CREATED: Timestamp.now(),
      MEMBER: this.userEmail
    });
  }
  var userEmail;

  RecruitWrite_Study({
    Key ?key, required this.userEmail,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          //뒤로가기
          Container(
            child:Row(
                children: [
                  Container(
                    child:IconButton(
                      icon:Icon(Icons.arrow_back_outlined),
                      color: Colors.black.withOpacity(0.71),
                      iconSize: 30,
                      onPressed: () {
                        Navigator.pop(context,false);
                      },
                    ),
                    margin: const EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child:Text(
                      '스터디 모집',
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
                ]
            ),
            // padding: const EdgeInsets.fromLTRB(8.0,20.0,0,0),
            margin: const EdgeInsets.only(top: 30),
          ),
          Container(
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '제목을 입력하세요',
              ),
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              controller: _newTitleCon,
            ),
            // padding: const EdgeInsets.fromLTRB(40,90,0,0),
            margin: const EdgeInsets.only(top: 15,left:30),
          ),

          Container(
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '조건',
              ),
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              controller: _newConditionCon,
            ),
            // padding: const EdgeInsets.fromLTRB(40,135.0,0,0),
            margin: const EdgeInsets.only(left:30),
          ),
          Container(
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '최대인원',
              ),
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              controller: _newMNCon,
            ),
            // padding: const EdgeInsets.fromLTRB(40,165,0,0),
            margin: const EdgeInsets.only(left:30),
          ),
          Container(
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '현재인원',
              ),
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              controller: _newCNCon,
            ),
            // padding: const EdgeInsets.fromLTRB(40,195,0,0),
            margin: const EdgeInsets.only(left:30),
          ),
          Container(
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '내용을 입력하세요',
              ),
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff000000),
              ),
              controller: _newDescCon,
            ),
            margin: const EdgeInsets.only(left:30),
          ),
          //제출버튼
          // Pinned.fromPins(
          //     Pin(start: 27.0, end: 27.0),
          //     Pin(size: 39.0, end: 40.0),
          Container(
            child : ElevatedButton(
              style: ElevatedButton.styleFrom( primary: Color(0xff995689)),
              onPressed: () {
                if (_newTitleCon.text.isNotEmpty && _newDescCon.text.isNotEmpty) {
                  String condition = _newConditionCon.text;
                  int mn = int.parse(_newMNCon.text);
                  int cn = int.parse(_newCNCon.text);
                  if(_newConditionCon.text.isEmpty)
                  {
                    condition = 'X';
                  }
                  if(_newMNCon.text.isEmpty)
                  {
                    mn = 0;
                  }
                  if(_newCNCon.text.isEmpty)
                  {
                    cn = 0;
                  }
                  DateTime now = DateTime.now();
                  createDoc(_newTitleCon.text, _newDescCon.text, condition,
                      mn,cn,userEmail);

                }
                _newTitleCon.clear();
                _newDescCon.clear();
                _newConditionCon.clear();
                _newMNCon.clear();
                _newCNCon.clear();
                Navigator.pop(context);

              },
              child: Text("작성완료"), ),
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