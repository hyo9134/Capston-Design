//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Board_page.dart';
import 'Home.dart';
import 'package:hanmodumo/BoardList_Search.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'Recruit.dart';
import 'TimeTable.dart';
import 'package:hanmodumo/Settings.dart' as hanmodumoSetting;
import 'package:flutter/services.dart';

class Scrap extends StatelessWidget {
  //필드명

  final String categoryNum = "컬랙션명";
  final String documentNum  = "게시글번호";
  final String dContent = "내용";
  final String dTitle = "제목";

// 문서 조회 (Read)
  void showDocument(String docID) {
    FirebaseFirestore.instance
        .collection("userInformation/$userEmail/scrap").doc(docID)
    //.collection("userInformation/" +docID+ "/UtCqnY7GLwKQTMp40by4" +"/scrap")
    //.doc(docID)
        .get()
        .then((doc) {
    });
  }

  // // 문서삭제
  // void deleteDocument(String docID) {
  //   FirebaseFirestore.instance
  //       .collection("userInformation/$userEmail/scrap").where(document[]).doc(docID).delete()
  //       .then((doc) {
  //   });
  // }
  //Stream collectionStream = FirebaseFirestore.instance.collection('userInformation').snapshots();
  //Stream documentStream = FirebaseFirestore.instance.collection("userInformation/$userEmail/scrap").doc().snapshots();
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  Scrap({
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
          '스크랩',
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
                            stream: FirebaseFirestore.instance.collection("userInformation/$userEmail/scrap").snapshots(),
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return Text("Loading...");
                                default:
                                  return ListView(

                                    children: snapshot.data!.docs.map((QueryDocumentSnapshot document) {
                                     // print(name?.length ?? 0);
                                      final dynamic data = document.data();
                                      return Expanded(
                                        child: InkWell(

                                          // Read Document
                                          onTap: () {
                                            showDocument(document.id);
                                            //보류
                                            Navigator.push(//이게없으면 게시글이 클릭이 안됨.
                                              context,
                                              MaterialPageRoute(builder: (context) => Board_page(document["게시판명"],document["컬랙션명"],document["게시글번호"],document["제목"],document["내용"],document["작성시간"])),
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

                                                      "${data["제목"] ?? " "}",
                                                      //data[dContent],
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      //"${document["게시글번호"]}",
                                                      //document[dContent],
                                                      //document["제목"],
                                                      //"${document["내용"]}",
                                                      style: TextStyle(
                                                        fontFamily: 'Arial',
                                                        color: const Color(0xff000000),
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 19,
                                                        //fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                    alignment: Alignment(-1.0, 0.443),
                                                    child: Text(

                                                      "${data["내용"]?? " "}",
                                                      //data[dTitle],
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      //"${document["컬랙션명"]}",
                                                      //document[categoryNum],
                                                      // document[dTitle],
                                                      //"${document["제목"]}",
                                                      style: TextStyle(
                                                        fontFamily: 'Arial',
                                                        fontSize: 15,
                                                        color: const Color(0xff000000),
                                                      ),
                                                    )
                                                ),
                                                Container(
                                                  alignment: Alignment(-1.0, 0.443),

                                                  child: Text(" "
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
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
