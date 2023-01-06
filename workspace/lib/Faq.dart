//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'package:hanmodumo/BoardView.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/Recruit.dart';
import 'package:hanmodumo/Settings.dart';
import 'TimeTable.dart';
import  'Settings.dart' as st;

import 'BoardList_Search.dart';
import 'SearchTab.dart';



class Faq extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // 컬렉션명
  final String colName = "faq";
  // 필드명
  final String boardTitle = "제목";
  final String boardContents = "내용";




  // static const String thisID1 =thisID;

  TextEditingController _newNameCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  var userEmail;

  Faq({
    Key ?key,
    //required this.thisID,
  }) : super(key: key);

  // final String thisID;

  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc){

      // showReadDocSnackBar(doc);
    });
  }

// 문서 갱신 (Update)
  void updateDoc(String docID, String postTitle, String postContent, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(colName).doc(docID).update({

      boardTitle: postTitle,
      boardContents: postContent,
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[boardTitle];
    _undDescCon.text = doc[boardContents];

  }
  // void showReadDocSnackBar(DocumentSnapshot doc) {
  //   _scaffoldKey.currentState!
  //     ..hideCurrentSnackBar()
  //     ..showSnackBar(
  //       SnackBar(
  //         backgroundColor: Colors.deepOrangeAccent,
  //         duration: Duration(seconds: 5),
  //         content: Text(
  //             "$boardTitle: ${doc["게시글제목"]}\n$boardContents: ${doc["게시글내용"]}"
  //                 ),
  //         action: SnackBarAction(
  //           label: "Done",
  //           textColor: Colors.white,
  //           onPressed: () {},
  //         ),
  //       ),
  //     );
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SizedBox(height: 10.0,), //위 간격
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
                      '자주 묻는 질문',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff995689),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                    margin: const EdgeInsets.only(left: 90.0),
                  )
                ]
            ),
            // padding: const EdgeInsets.fromLTRB(8.0,20.0,0,0),
            margin: const EdgeInsets.only(top: 30),
          ),

          //파이어베이스 불러오는부분

          Pinned.fromPins(
            Pin(start: 39.0, end: 30.0),//start: 왼쪽공백
            // Pin(size: 30.0, start: 128.0),
            Pin(size: 500.0, start: 80.0),
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

                        child: StreamBuilder(
                          stream: FirebaseFirestore.instance.collection(colName).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("정보를 불러오는 중입니다...");
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
                                          ;

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
                                                    document[boardTitle],
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
                                                    document[boardContents],
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
                                );return SizedBox.shrink();
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height:70,
          color: Colors.white54,
          child:Row(
            children: [
              Spacer(),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    IconButton(
                      padding: EdgeInsets.zero,
// 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(Icons.format_list_bulleted_outlined),
                      color:const Color(0xff995689),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BoardList_Main(userEmail:userEmail),)
                        );

                      },
                    ),
                    Text("게시판",style:TextStyle(
                      fontSize: 12,
                      color:const Color(0xff995689),
                    ),),
                  ]),

              Spacer(),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    IconButton(
                      padding: EdgeInsets.zero,
// 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(Icons.table_chart_outlined),
                      color:Colors.black38,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TimeTable(title: "시간표",userEmail: userEmail),)
                        );
                      },
                    ),
                    Text("시간표",style:TextStyle(
                      color:Colors.black38,
                      fontSize: 12,
                    ),
                    ),
                  ]

              ),

              Spacer(),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    IconButton(
                      padding: EdgeInsets.zero,
// 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(Icons.home_outlined),
                      color:Colors.black38,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home(userEmail: userEmail,),)
                        );
                      },
                    ),
                    Text("홈",style:TextStyle(
                      color:Colors.black38,
                      fontSize: 12,
                    ),
                    ),
                  ]

              ),

              Spacer(),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    IconButton(
                      padding: EdgeInsets.zero,
// 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(Icons.groups_outlined),
                      color:Colors.black38,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Recruit(userEmail: userEmail),)
                        );
                      },
                    ),
                    Text("소모임",style:TextStyle(
                      color:Colors.black38,
                      fontSize: 12,
                    ),
                    ),
                  ]

              ),

              Spacer(),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    IconButton(
                      padding: EdgeInsets.zero,
// 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(Icons.settings_outlined),
                      color:Colors.black38,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => st.Settings(userEmail: userEmail),)
                        );
                      },
                    ),
                    Text("설정",style:TextStyle(
                      color:Colors.black38,
                      fontSize: 12,
                    ),
                    ),
                  ]
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

}


class Firestore {
}
