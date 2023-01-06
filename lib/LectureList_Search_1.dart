//import 'dart:js';
import 'package:favorite_button/favorite_button.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hanmodumo/LectureList_Search_2.dart';
import 'BoardList_Main.dart';
import 'Home.dart';
import 'Recruit.dart';
import 'SearchTabBoard.dart';
import 'TimeTable.dart';
import 'Settings.dart' as st;

//신학부클릭시 학과 강의목록 쫙뜨는페이지

class LectureList_Search_1 extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  // 컬렉션명
  final String colName = "lectureList22_2_";
  // 필드명

  final String lectureName = "교과목명(전년도강의평가결과)";
  final String lectureCode = "교과목코드";
  final String lectureSub = "분반";
  String post_title="게시글제목";
  String post_content="게시글내용";


  TextEditingController _newNameCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _newSubCon = TextEditingController();

  var userEmail;

  LectureList_Search_1({
    Key ?key, required this.thisID,required this.userEmail, //required this.thisID2
  }) : super(key: key);

  final String thisID;


  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc){

    });
  }

// 문서 갱신 (Update)
  void updateDoc(String docID, String postTitle, String postContent,String postSub, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(colName).doc(docID).update({

      lectureName: postContent,
      lectureCode: postNum,
      lectureSub: postSub,
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {

    _newNameCon.text = doc[lectureName];
    _newDescCon.text = doc[lectureCode];
    _newSubCon.text = doc[lectureSub];
  }
  //필드명
  final String ThisID = "학부";

  //즐겨찾기 문서 생성 (Create)
  void createDoc(String BoardList,String LectureCode,String LectureName ) {
    FirebaseFirestore.instance.collection("userInformation/$userEmail/bookmark_lecture").add({
      ThisID: BoardList,
      lectureCode: LectureCode,
      lectureName: LectureName,


    });
  }
  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    print(colName+thisID);

    print("*********************************************");
    print(userEmail);
    print("*********************************************");
    String lectureColName = colName+thisID;
    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
              '강의별 게시판',
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
                  MaterialPageRoute(builder: (context) => SearchTabBoard(lectureColName,"강의별게시판", post_title, post_content, userEmail))
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
                    thisID,
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


                        child: StreamBuilder(
                          stream: FirebaseFirestore.instance.collection(colName + thisID).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("강의 정보를 불러오는 중입니다...");
                              default:
                              // if("학부"==thisID)
                                return ListView(
                                  children: snapshot.data!.docs
                                      .map((DocumentSnapshot document) {
                                    return Expanded(
                                      child: InkWell(
                                        // Read Document
                                        onTap: () {
                                          showDocument(document.id);
                                          Navigator.push(
                                            context,
                                            //thisID3: colName + thisID+"/"
                                            MaterialPageRoute(builder: (context) => LectureList_Search_2(thisID: thisID, thisID2: document.get(lectureCode) +"-"+ document.get(lectureSub), thisID3:document.get(lectureName), userEmail: userEmail,)),
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
                                                    document[lectureName],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 18,
                                                      color: const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  //즐겨찾기 아이콘
                                                  StarButton(
                                                    isStarred: false,
                                                    // iconDisabledColor: Colors.white,
                                                    iconSize: 50,
                                                    valueChanged: (_isStarred) {
                                                      print('Is Starred : $_isStarred');
                                                      createDoc(thisID, document[lectureCode], document[lectureName]);
                                                    },
                                                  ),
                                                  // Container(
                                                  //   child: IconButton(
                                                  //     icon: Icon(Icons.star_outline_rounded),
                                                  //     color: Colors.black.withOpacity(0.71),
                                                  //     iconSize: 25,
                                                  //     onPressed: ()async {
                                                  //       createDoc(thisID, document[lectureCode], document[lectureName]);
                                                  //       Navigator.pop(context);
                                                  //     },
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                              Container(
                                                  alignment: Alignment(-1.0, 0.443),
                                                  //       child: SizedBox(
                                                  //         width: 183.0,
                                                  //         height: 17.0,
                                                  child: Text(
                                                    document[lectureCode]+ "-" +document[lectureSub],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 13,
                                                      color: const Color(0xff000000),
                                                    ),
                                                  )
                                              )
                                            ],
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

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
