
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import 'Home.dart';
import 'Recruit.dart';
import 'TimeTable.dart';
//게시글 작성인데
class BoardWrite extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String colName = "board_free";

// 필드명
  final String post_content = "게시글내용";
  final String post_number = "게시글번호";
  final String post_title = "게시글제목";
  final String date_modified = "수정일";
  final String date_created = "작성일";
  final String view_count = "조회수";
  final String number_recommedations = "추천수";
  final String category_number = "카테고리번호";
  final String voting = "투표";
  final String member_identification_number = "회원고유번호";
  final String accuse_f = "신고";

  TextEditingController _newTitleCon = TextEditingController();
  TextEditingController _newContentCon = TextEditingController();

  var userEmail;

  // TextEditingController _undNameCon = TextEditingController();
  // TextEditingController _undDescCon = TextEditingController();

// 문서 생성 (Create)
  void createDoc(String postTitle, String postContent, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(colName).add({

      post_content: postContent,
      post_number: postNum,
      post_title: postTitle,
      date_modified: dateModified,
      // date_created: Timestamp.now(),
      date_created: dateModified,
      view_count: postViewCount,
      number_recommedations: postNumberRecommedations,
      category_number:categoryNumber,
      voting:postVoting,
      member_identification_number: memberIdentificationNumber,

    });
  }

  // void createDoc2(int accuse) {
  //   FirebaseFirestore.instance.collection(colName).doc(post_title).collection(post_number).add({
  //
  //     accuse_f: accuse,
  //   });
  // }

// 문서 갱신 (Update)
  void updateDoc(String docID, String postTitle, String postContent, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(colName).doc(docID).update({

      post_content: postContent,
      post_number: postNum,
      post_title: postTitle,
      date_modified: dateModified,
      date_created: Timestamp.now(),
      view_count: postViewCount,
      number_recommedations: postNumberRecommedations,
      category_number:categoryNumber,
      voting:postVoting,
      member_identification_number: memberIdentificationNumber,
    });
  }
  Future<int> countDocuments() async {
    QuerySnapshot _myDoc = await  FirebaseFirestore.instance.collection(colName).get();
    List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    return _myDocCount.length;  // Count of Documents in Collection
  }

  BoardWrite({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[

          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 448.0, start: 132.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: const Color(0x73d8b9d2)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '자유게시판 - 글쓰기',
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
            Pin(size: 23.0, start: 5.0),
            Pin(size: 23.0, start: 15.0),
            child: IconButton(
              icon:Icon(Icons.arrow_back_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context,false);
              },
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, end: 45.0),
            Pin(size: 29.0, start: 19.0),
            child: IconButton(
              icon:Icon(Icons.done),
              color: Colors.black.withOpacity(0.71),
              iconSize: 30,

              onPressed: () async {
      DateTime now = DateTime.now();
      int documentCount = await countDocuments();
    createDoc(_newTitleCon.text, _newContentCon.text,
        documentCount,
        now, 0, 0,
    0, "N", "Hong");





    _newTitleCon.clear();
    _newContentCon.clear();
    Navigator.pop(context);
    },
            ),
          ),

          Pinned.fromPins(
            Pin(size: 149.0, start: 40.0),
            Pin(size: 24.0, start: 137.0),
              child:TextField(
                  decoration: InputDecoration(
                    hintText: '제목을 입력하세요',

                  ),
                controller: _newTitleCon,
              )
          ),
          Pinned.fromPins(
             Pin(size: 141.0, start: 40.0),
             Pin(size: 23.0, start: 200.0),
    // Pin(size: 149.0, start: 40.0),
    // Pin(size: 24.0, start: 137.0),
    // child: Text(
    // '제목을 입력하세요',
              child:TextField(
                  decoration: InputDecoration(
                    hintText: '내용을 입력하세요',
                  ),
                controller: _newContentCon,
              )
          ),



          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, start: 167.0),
            child: SvgPicture.string(
              _svg_fmuelq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),







//홈버튼
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.4761),
            Pin(size: 43.0, end: 30.0),
            child: IconButton(
              icon:Icon(Icons.home_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 45,
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(userEmail: userEmail)),
                );
              },
            ),

          ),
          //설정버튼
          Pinned.fromPins(
            Pin(size: 37.0, end: 42.0),
            Pin(size: 37.0, end: 35.0),
            child: IconButton(
              icon:Icon(Icons.settings_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 45,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(userEmail: userEmail)),
                );
              },
            ),
          ),
          //시간표버튼
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.2481),
            Pin(size: 36.0, end:36.0),
            child: IconButton(
              icon:Icon(Icons.table_chart_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 45,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimeTable(title: "시간표",userEmail: userEmail)),
                );
              },
            ),
          ),
          //게시판버튼
          Pinned.fromPins(
            Pin(size: 36.0, start: 23.0),
            Pin(size: 36.0, end: 38.0),
            child: IconButton(
              icon:Icon(Icons.format_list_bulleted_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 45,
              onPressed: null,
            ),
          ),
          //스터디그룹 버튼
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.6795),
            Pin(size: 43.0, end: 31.0),
            child: IconButton(
              icon:Icon(Icons.groups_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 45,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recruit(userEmail: userEmail)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_fmuelq =
    '<svg viewBox="27.0 167.0 374.0 1.0" ><path transform="translate(27.0, 167.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
