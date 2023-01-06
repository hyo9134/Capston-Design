//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'BoardList_Main.dart';
import 'Home.dart';
import 'LectureList_Search_1.dart';
import 'Recruit.dart';
import 'SearchTab.dart';
import 'TimeTable.dart';
import 'Settings.dart' as st;

class LectureList extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // 컬렉션명
  final String colName = "department";
  // 필드명
  final String BigName = "대학";
  final String SmallName = "학부";


  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  var userEmail;

  LectureList({
    Key ?key,required this.userEmail,
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

      BigName: postContent,
      SmallName: postNum,
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[BigName];
    _undDescCon.text = doc[SmallName];
  }

  @override
  Widget build(BuildContext context) {


    print("*********************************************");
    print(userEmail);
    print("*********************************************");

    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
              '게시판',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
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
        actions: [
          IconButton(
            icon:Icon(Icons.search),
            color: Colors.black.withOpacity(0.71),
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAppSearch(colName,SmallName,BigName))
              );
            },
          ),
        ],
        backgroundColor: Colors.white30,
        elevation: 0,
      ),
      body: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                    '강의별 게시판',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: const Color(0xff995689),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                        margin: const EdgeInsets.only(left:20)
                ),
                      Container(
                          color: const Color(0xff995689),
                          height: 2,
                          margin: const EdgeInsets.only(left:20,right:20,bottom: 10)
                      ),
              ],
            ),
          ),
          //여기까지가 강의별게시판


          //파이어베이스 불러오는부분
                Container(
                  child: Column(
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
                        height: deviceheight-220,

                        child: StreamBuilder<QuerySnapshot>(

                          stream: FirebaseFirestore.instance.collection(colName).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("게시판 정보를 불러오는 중입니다...");
                              default:
                                return ListView(

                                  children: snapshot.data!.docs
                                      .map((DocumentSnapshot document) {
                                    return Expanded(
                                      child: InkWell(
                                        // Read Document
                                        onTap: () {
                                          //showDocument(document.id);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => LectureList_Search_1(thisID : document.get(SmallName), userEmail: userEmail, //thisID2: document.get(SmallName),
                                            ),
                                            ),
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
                                                    document[SmallName],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 19,
                                                      color: const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  Container(
                                                      child: const Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Colors.black54,)
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  alignment: Alignment(-1.0, 0.443),
                                                  //       child: SizedBox(
                                                  //         width: 183.0,
                                                  //         height: 17.0,
                                                  child: Text(" "
                                                    // document[BigName],
                                                    // style: TextStyle(
                                                    //   //fontFamily: 'Arial',
                                                    //   fontSize: 1,
                                                    //   //color: const Color(0xff000000),
                                                    // ),
                                                  ),
                                              ),
                                              // Container(
                                              //   alignment: Alignment(-1.0, 0.443),
                                              //   child: Text(" "
                                              //   ),
                                              // )

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
                    margin: const EdgeInsets.only(left:20,right:20,bottom: 10)
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
