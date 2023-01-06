import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'BoardList_Search_1.dart';
import 'package:flutter/services.dart';

import 'LectureList_Search_2.dart';

class BookMark_Lecture extends StatelessWidget {
  // 컬렉션명
  //final String colName = "bookmark_lecture";
  //final String colName = "bookmark_lecture";
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
    .collection("userInformation/$userEmail/bookmark_lecture").doc(docID)
        .get()
        .then((doc) {
    });
  }
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  BookMark_Lecture({
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
              '강의별 즐겨찾기',
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
                                    stream: FirebaseFirestore.instance.collection("userInformation/$userEmail/bookmark_lecture").snapshots(),
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
                                                       MaterialPageRoute(builder: (context) =>LectureList_Search_2(thisID: document['학부'], thisID2:document['교과목코드'], thisID3: document['교과목명(전년도강의평가결과)'], userEmail: userEmail, )),
                                                      //MaterialPageRoute(builder: (context) =>BoardList_Search_1(thisID: document["학부"], keywords: keywords, noticeLink: noticeLink,userEmail: userEmail,)),
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
                                                              "${data["교과목명(전년도강의평가결과)"]}"+'('+"${data["교과목코드"]}"+')',
                                                              // "${data["교과목코드"]+data["교과목명(전년도강의평가결과)"]}",
                                                              //"${data["학부"]}",
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
