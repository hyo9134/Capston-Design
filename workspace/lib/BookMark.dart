import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'BoardList_Search_1.dart';
import 'package:flutter/services.dart';

import 'LectureList_Search_2.dart';

class BookMark extends StatelessWidget {
  //필드명

  final String categoryNum = "컬랙션명";
  final String documentNum  = "게시글번호";
  final String dContent = "내용";
  final String dTitle = "제목";

  //크롤링
  String keywords='';
  String noticeLink='';

// 문서 조회 (Read)

  void showDocument(String docID) {
    FirebaseFirestore.instance
    .collection("userInformation/$userEmail/bookmark_board").doc(docID)
        .get()
        .then((doc) {
    });
  }
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  BookMark({
    Key ?key, required this.userEmail,
  }) : super(key: key);
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
              '학과별 즐겨찾기',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
            ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.black.withOpacity(0.71),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        backgroundColor: Colors.white30,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
//스크롤
          Container(
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  primary: false,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 19,
                    runSpacing: 17,
                    children: [{}].map((itemData) {
                      return SizedBox(
                          width: deviceWidth-40,
                          height: deviceheight-150,
//선인듯
                                  child: StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance.collection("userInformation/$userEmail/bookmark_board").snapshots(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                                      switch (snapshot.connectionState) {
                                        case ConnectionState.waiting:
                                          return Text("Loading...");
                                        default:
                                          return ListView(
                                            children: snapshot.data!.docs.map((QueryDocumentSnapshot document) {
                                              final dynamic data = document.data();
                                              return Expanded(
                                                flex: 1,
                                                child: InkWell(
                                                  // Read Document
                                                  onTap: () {
                                                    showDocument(document.id);
                                                    //보류
                                                    Navigator.push(//이게없으면 게시글이 클릭이 안됨.
                                                      context,
                                                       //MaterialPageRoute(builder: (context) =>LectureList_Search_2(thisID: document['학부'], thisID2:document['교과목코드'], thisID3: document['교과목명(전년도강의평가결과)'], userEmail: userEmail, )),
                                                      MaterialPageRoute(builder: (context) =>BoardList_Search_1(thisID: document["학부"],noticeLink: noticeLink, userEmail: userEmail,)),
                                                    );
                                                  },
                                                  // Update or Delete Document
                                                  onLongPress: () {
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(8),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                          children: <Widget>[
                                                            Text(
                                                              //"${data["교과목명(전년도강의평가결과)"]}"+'('+"${data["교과목코드"]}"+')',
                                                              // "${data["교과목코드"]+data["교과목명(전년도강의평가결과)"]}",
                                                              "${data["학부"]}",
                                                             // maxLines: 1,
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(
                                                                 fontFamily: 'Arial',
                                                                 color: const Color(0xff000000),
                                                                 fontWeight: FontWeight.w700,
                                                                  fontSize: 19,
                                                              ),
                                                              ),
                                                            Container(
                                                                child: const Icon(Icons.arrow_forward_ios_outlined,size: 11,color: Colors.black54,)
                                                            ),

                                                          ],
                                                        ),
                                                        Container(
                                                          alignment: Alignment(-1.0, 0.443),
                                                          child: Text(" "
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment(-1.0, 0.443),
                                                          child: Text(" "
                                                          ),
                                                        )
                                                        ],
                                                    ),
                                                  ),
                                                ),
                                              );




                                              //-----
                                            }).toList(),

                                          );

                                      }

                                    },

                                  ),

                      );

                    }).toList(),
                  ),

      ),

      ],
    ),
              margin: EdgeInsets.only(top:10,left:20,right:20)
          ),
        ],
      ),
    );
  }
}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jmdztu =
    '<svg viewBox="27.0 71.0 375.0 35.0" ><path transform="translate(27.0, 71.0)" d="M 0 0 L 375 0 L 375 35 L 0 35 L 0 0 Z" fill="#e6c2e1" fill-opacity="0.53" stroke="none" stroke-width="1" stroke-opacity="0.53" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c2i5le =
    '<svg viewBox="39.0 179.0 362.0 1.0" ><path transform="translate(39.0, 179.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vg0lzm =
    '<svg viewBox="39.0 229.0 362.0 1.0" ><path transform="translate(39.0, 229.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g4xv2 =
    '<svg viewBox="39.0 279.0 362.0 1.0" ><path transform="translate(39.0, 279.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_axdij6 =
    '<svg viewBox="39.0 329.0 362.0 1.0" ><path transform="translate(39.0, 329.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sys1bi =
    '<svg viewBox="39.0 379.0 362.0 1.0" ><path transform="translate(39.0, 379.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kk2qa =
    '<svg viewBox="39.0 432.0 362.0 1.0" ><path transform="translate(39.0, 432.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i00pe =
    '<svg viewBox="39.0 480.0 362.0 1.0" ><path transform="translate(39.0, 480.0)" d="M 0 0 L 362 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hr49fj =
    '<svg viewBox="27.5 253.0 374.0 1.0" ><path transform="translate(27.5, 253.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.7" stroke="#707070" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
