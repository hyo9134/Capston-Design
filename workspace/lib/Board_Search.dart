import 'dart:async';

import 'package:adobe_xd/blend_mask.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'package:hanmodumo/SearchTabBoard.dart';
import 'package:intl/intl.dart';
import 'BoardList_Main.dart';
import 'BoardWriteFlutterLayout.dart';
import 'Board_page.dart';
import 'Home.dart';
import 'Recruit.dart';
import 'SearchTab.dart';
import 'TimeTable.dart';
import 'Settings.dart' as st;
import 'package:flutter/services.dart';
//자유게시판 게시글목록뜨는화면

class Board_Search extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final String colName = "board_free";
  final collection = FirebaseFirestore.instance.collection("board_free");

  //final String contentsID = "게시글번호";

  String post_title = "게시글제목";
  String post_content = "게시글내용";

  var userEmail;

  // 문서 조회 (Read)
  void showDocument(String docID) {
    FirebaseFirestore.instance
        .collection(colName)
        .doc(docID)
        .get()
        .then((doc) {});
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


  Stream collectionStream = FirebaseFirestore.instance.collection('board_free')
      .snapshots();
  Stream documentStream = FirebaseFirestore.instance.collection('board_free')
      .doc()
      .snapshots();
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  Board_Search({
    Key ?key, required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    double deviceheight = MediaQuery
        .of(context)
        .size
        .height;


    print("*********************************************");
    print(userEmail);
    print("*********************************************");
    return Scaffold(

      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
          '자유게시판',
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
        actions: [
          IconButton(
            icon:Icon(Icons.search),
            color: Colors.black.withOpacity(0.71),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
//         actions: [
//           Container(
//             child:IconButton(
//               padding: EdgeInsets.zero,
// // 패딩 설정
//               constraints: const BoxConstraints(),
//               icon: Icon(Icons.search),
//               color: Colors.black.withOpacity(0.71),
//               iconSize: 30,
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => SearchTabBoard(
//                         colName, "자유게시판", post_title, post_content, userEmail))
//                 );
//               },
//             ),
//       margin: const EdgeInsets.only(right: 20)
//           ),
//         ],
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
                        height: deviceheight-180,
                        child: StreamBuilder<QuerySnapshot>(
                          //작성순정렬
                          stream: FirebaseFirestore.instance.collection(
                              "board_free"). orderBy("작성일",descending: true).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError)
                              return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("Loading...");
                              default:
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
                                              MaterialPageRoute(
                                                  builder: (context) => Board_page("자유게시판", colName,document["게시글번호"], document["게시글제목"], document["게시글내용"], document["수정일"], userEmail: userEmail,)),
                                            );


                                        },
                                        // Update or Delete Document
                                        onLongPress: () {},
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    document["게시글제목"],
                                                    style: TextStyle(
                                                      fontFamily: 'Arial',
                                                      fontSize: 19,
                                                      color: const Color(
                                                          0xff000000),
                                                      fontWeight: FontWeight
                                                          .w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                alignment: Alignment(
                                                    -1.0, 0.443),
                                                child: Text(
                                                  document["게시글내용"],
                                                  style: TextStyle(
                                                    fontFamily: 'Arial',
                                                    fontSize: 15,
                                                    color: const Color(
                                                        0xff000000),
                                                  ),
                                                ),
                                                  margin: EdgeInsets.only(top:3),
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
    //글쓰기 버튼
    floatingActionButton :FloatingActionButton(
    child: Icon(Icons.drive_file_rename_outline_outlined),
    backgroundColor: Color(0xf1995689),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            BoardWriteFlutterLayout("자유게시판", colName, userEmail)),
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

const String _svg_jmdztu =
    '<svg viewBox="27.0 71.0 375.0 35.0" ><path transform="translate(27.0, 71.0)" d="M 0 0 L 375 0 L 375 35 L 0 35 L 0 0 Z" fill="#e6c2e1" fill-opacity="0.53" stroke="none" stroke-width="1" stroke-opacity="0.53" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
