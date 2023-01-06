//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/ContactDirectoryProffessor.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/Recruit.dart';
import 'package:hanmodumo/Settings.dart';

import 'BoardList_Search.dart';
import 'SearchTab2.dart';
import 'TimeTable.dart';
import 'SearchTab.dart';



class ContactDirectorySchoolNumber extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // 컬렉션명
  final String colName = "professorPhoneNumber";
  // 필드명
  final String DetailedAffiliation = "세부소속";
  final String Affiliation = "소속";
  final String BuildingNumber = "실번호";
  final String Name = "이름";
  final String PhoneNumber = "전화번호";



  TextEditingController _newNameCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  var userEmail;

  ContactDirectorySchoolNumber({
    Key ?key,
  }) : super(key: key);

  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc){
      //showReadDocSnackBar(doc);
    });
  }


// 문서 갱신 (Update)
  void updateDoc(String docID, String postTitle, String postContent, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(colName).doc(docID).update({

      DetailedAffiliation: postContent,
      Affiliation: postContent,
      Affiliation: postNum,
      Name: postContent,
      PhoneNumber: postNum,
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[DetailedAffiliation];
    _undDescCon.text = doc[PhoneNumber];
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          //뒤로가기버튼
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
            Pin(size: 126.0, middle: 0.4934),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '전화번호 안내',
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
            Pin(size: 51.0, middle: 0.2546),
            Pin(size: 23.0, start: 72.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactDirectoryProffessor()),
                );
              },
            child: Text(
              '교수님',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff995689),
              ),
              softWrap: false,
            ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(0.5),
          ),
          ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.7386),
            Pin(size: 23.0, start: 72.0),
            child: Text(
              '교내',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),

          Pinned.fromPins(
            Pin(size: 29.0, end: 25.0),//좌우
            Pin(size: 29.0, start: 15.0),//위아래
            child: IconButton(
              icon:Icon(Icons.search),
              color: Colors.black.withOpacity(0.71),
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SchoolNumberSearch(colName,Name,PhoneNumber,DetailedAffiliation,Affiliation,BuildingNumber,Name,PhoneNumber))
                );
              },
            ),
          ),
          //파이어베이스 불러오는부분

          Pinned.fromPins(

            Pin(start: 39.0, end: 30.0),//start: 왼쪽공백
            // Pin(size: 30.0, start: 128.0),
            Pin(size: 500.0, start: 120.0),
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
                        width: 432.0,
                        height: 650.0,

                        child: StreamBuilder<QuerySnapshot>(

                          stream: FirebaseFirestore.instance.collection(colName).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("Loading...");
                              default:
                                return ListView(

                                  children: snapshot.data!.docs
                                      .map((DocumentSnapshot document) {
                                    //Timestamp tt = document["datetime"];
                                    // DateTime dt = DateTime.fromMicrosecondsSinceEpoch(
                                    //     tt.microsecondsSinceEpoch);

                                    return Expanded(
                                      child: InkWell(
                                        // Read Document
                                        onTap: () {
                                          showDocument(document.id);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Home(userEmail: userEmail)),
                                          );
                                        },
                                        // Update or Delete Document
                                        onLongPress: () {
                                          showUpdateOrDeleteDocDialog(document);
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
                                                    document[DetailedAffiliation],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 17,
                                                      color: const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  // Text(
                                                  //   dt.toString(),
                                                  //   style: TextStyle(color: Colors.grey[600]),
                                                  // )
                                                ],
                                              ),
                                              Container(
                                                  alignment: Alignment(-1.0, 0.443),
                                                  //       child: SizedBox(
                                                  //         width: 183.0,
                                                  //         height: 17.0,
                                                  child: Text(
                                                    document[Affiliation]+document[BuildingNumber]+"\n"+document[Name]+document[PhoneNumber],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 13,
                                                      color: const Color(0xff000000),
                                                    ),
                                                  )
                                              )],
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
          ),
        ],
      ),

    );
  }

}


class Firestore {
}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
