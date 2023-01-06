//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hanmodumo/Board_page.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/Recruit.dart';
import 'package:intl/intl.dart';
import 'BoardList_Main.dart';
import 'TimeTable.dart';
import 'LectureListWriteFlutterLayout.dart';
import 'SearchTab.dart';
import 'Settings.dart' as st;

//학과의 강의 클릭하고 게시판으로  넘어가는 그 학과의 강의 게시판



class LectureList_Search_2 extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // 컬렉션명
  final String colName = "board_lectureList";
  // 필드명
  final String boardTitle = "게시글제목";
  final String boardContents = "게시글내용";
  final String boardDepartment = "학부";
  //final String contentsID = "게시글번호";
  final String lectureCode = "교과목코드";


  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  var userEmail;

  LectureList_Search_2({
    Key ?key, required this.thisID, required this.thisID2, required this.thisID3,required this.userEmail,
  }) : super(key: key);

  final String thisID; //학과명
  final String thisID2;//교과목코드(분반포함)
  final String thisID3;//과목명

  //final String thisID3;//lectureList_22_2_신학부/ 까지의 주소

  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc) {
    });
  }
  // 시간 조회
  String timeCheck(Timestamp time)
  {
    int timem = int.parse(DateFormat('HHmm').format(DateTime.now()))-int.parse(DateFormat('HHmm').format(DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch)));
    print(timem);
    if(DateFormat('yyyyMMdd').format(DateTime.now()) ==DateFormat('yyyyMMdd').format(DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch))&& timem<60)
      return ("${timem}분전");
    else if(DateFormat('yyyyMMdd').format(DateTime.now()) == DateFormat('yyyyMMdd').format(DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch))&& timem>60)
      return DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch));
    return DateFormat('yyyy/MM/dd HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch));
  }

// // 문서 갱신 (Update)
//   void updateDoc(String docID, String postTitle, String postContent, int postNum,
//       DateTime dateModified, int postViewCount, int postNumberRecommedations,
//       int categoryNumber, String postVoting, String memberIdentificationNumber) {
//     FirebaseFirestore.instance.collection(colName).doc(docID).update({
//
//       contentsID:docID,
//       boardTitle: postTitle,
//       boardContents: postContent,
//     });
//   }


  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[boardTitle];
    _undDescCon.text = doc[boardContents];

  }
  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    print(thisID);
    print('thisID2'+ thisID2);

    print("*********************************************");
    print(userEmail);
    print("*********************************************");
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
                  MaterialPageRoute(builder: (context) => MyAppSearch(colName,boardTitle,boardContents,))
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
                    thisID3+ "("+ thisID2 +")",
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
                          stream: FirebaseFirestore.instance.collection(colName).where("교과목코드", isEqualTo: thisID2). orderBy("작성일",descending: true).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("게시판 정보를 불러오는 중입니다...");
                              default:
                              // if("학부"==thisID)
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
                                            MaterialPageRoute(builder: (context) => Board_page(thisID,colName,document["게시글번호"],document[boardTitle], document[boardContents], Timestamp.now(),userEmail: userEmail)),
                                          );

                                        },
                                        // Update or Delete Document
                                        onLongPress: () {
                                          showUpdateOrDeleteDocDialog(document);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(7),
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
                                                      fontSize: 18,
                                                      color: const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  alignment: Alignment(-1.0, 0.443),
                                                  child: Text(
                                                    document[boardContents],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 13,
                                                      color: const Color(0xff000000),
                                                    ),
                                                  )
                                              ),
                                              //작성 시간 보이기
                                              Container(
                                                alignment: Alignment(
                                                    -1.0, 0.443),
                                                child: Text(timeCheck(document["작성일"]),
                                                  style: TextStyle(
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    color: const Color(
                                                        0x4f000000),
                                                  ),
                                                ),
                                                margin: EdgeInsets.only(top:4),
                                              ),
                                              Container(
                                                margin:EdgeInsets.only(top:5,bottom:5),
                                                height:1,
                                                color: Color(0x1f000000),
                                              ),
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
      //글쓰기
      floatingActionButton :FloatingActionButton(
        child: Icon(Icons.drive_file_rename_outline_outlined),
        backgroundColor: Color(0xf1995689),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LectureListWriteFlutterLayout("강의별게시판",colName, userEmail, thisID: thisID2, thisID2: thisID)),
          );
        },
      ),
    );

  }

}




class Firestore {
}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';