import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/RecruitWrite_Study.dart';
import 'package:hanmodumo/RecruitWrite_speedy.dart';
import 'package:hanmodumo/Settings.dart' as hmSt;
import 'Recruit2.dart';
import 'Recruit_page.dart';
import 'SearchTab.dart';
import 'SearchTabBoard2.dart';
import 'Settings.dart';
import 'TimeTable.dart';

//소모임-번개
class Recruit extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  // 컬렉션명
  final String RQCOlNAME = "recruitQuick";
  final String RSCOLNAME = "recruitStudy";
  //필드명
  final String TITLE = "제목";
  final String CONDITION = "조건";
  final String CURRENT_PERSONNEL = "현재인원";
  final String MAX_PERSONNEL = "최대인원";
  final String DESCRIPTION  = "설명";
  final String TIME = "시간";
  final String GOUSER="회원고유번호";


  // final String TITLE = "제목";
  // final String CONDITION = "조건";
  // final int CURRENT_PERSONNEL = 0;
  // final int MAX_PERSONNEL = 0;
  // final String DESCRIPTION  = "설명";
  // final Timestamp TIME = Timestamp.now();



  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();
  TextEditingController _goUserCon = TextEditingController();
  TextEditingController _undMxPnCon = TextEditingController();
  TextEditingController _undCrPnCon = TextEditingController();
  TextEditingController _searchCon = TextEditingController();

  var userEmail;

  Recruit({
    Key? key, required this.userEmail,
  }) : super(key: key);

  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(RQCOlNAME).doc(documentID).get().then((doc){
      //showReadDocSnackBar(doc);
    });
  }
  //문서검색
  Query<Map<String, dynamic>> searchDoc(String title){
    var searchResult = FirebaseFirestore.instance
    .collection(RQCOlNAME)
    .where("제목", isEqualTo:title);
    print(searchResult);
    return searchResult;
  }


// 문서 갱신 (Update)
  void updateDoc(String docID, String postTitle, String postContent, int postNum,
      DateTime dateModified, int postViewCount, int postNumberRecommedations,
      int categoryNumber, String postVoting, String memberIdentificationNumber) {
    FirebaseFirestore.instance.collection(RQCOlNAME).doc(docID).update({

      TITLE: postContent,
      CONDITION: postNum,
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[TITLE];
    _undDescCon.text = doc[CONDITION];
    _undMxPnCon = doc[CURRENT_PERSONNEL];
    _undMxPnCon = doc[MAX_PERSONNEL];
    _goUserCon= doc[GOUSER];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 106.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '소모임 모집',
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
            Pin(size: 187.0, end: 27.0),
            Pin(size: 35.0, start: 88.0),
            child: Container(
              color: const Color(0x87ffffff),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.23),
            Pin(size: 100.0, start: 35.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  primary: Color(0xff995689),

                ),
                onPressed:(){}, child: Text("번개"), )
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.82),
            Pin(size: 100.0, start: 35.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                primary: Color(0xffced4da),
              ),
              onPressed: () {
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Recruit2(userEmail:userEmail)),
              );
            }, child: Text("스터디"), )
          ),
          /////////검색버튼/////////////
          // Pinned.fromPins(
          //   Pin(size: 29.0, end: 45.0),
          //   Pin(size: 29.0, start: 19.0),
          //   child: IconButton(
          //     icon:Icon(Icons.search),
          //     color: Colors.black.withOpacity(0.71),
          //     iconSize: 30,
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => MyAppSearch(RQCOlNAME,TITLE,CONDITION))
          //       );
          //     },
          //   ),
          // ),

          //검색버튼
          Pinned.fromPins(
            Pin(size: 29.0, end: 45.0),
            Pin(size: 29.0, start: 19.0),
            child: IconButton(
              icon:Icon(Icons.search),
              color: Colors.black.withOpacity(0.71),
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchTabBoard2(RQCOlNAME, "번개 모집", TITLE,CONDITION, userEmail))
                );
              },
            ),
          ),
          ///////////////게시글내용/////////////
          Pinned.fromPins(
            Pin(start: 39.0, end: 30.0),//start: 왼쪽공백
            // Pin(size: 30.0, start: 128.0),
            Pin(size: 500.0, start: 160.0),
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
                        width: 450.0,
                        height: 450.0,

                        child: StreamBuilder<QuerySnapshot>(

                          stream: FirebaseFirestore.instance.collection(RQCOlNAME).orderBy("시간",descending: true).snapshots(),
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
                                            MaterialPageRoute(builder: (context) => Recruit_page("번개 모집", document[TITLE],document[CONDITION],document[MAX_PERSONNEL],document[CURRENT_PERSONNEL],document[DESCRIPTION],document[TIME], userEmail: userEmail,)),
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
                                                    document[TITLE],
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
                                                    document[CONDITION]+"/("+document[CURRENT_PERSONNEL].toString()+"/"+document[MAX_PERSONNEL].toString()+")",
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
      //글쓰기
      floatingActionButton :FloatingActionButton(
        child: Icon(Icons.drive_file_rename_outline_outlined),
        backgroundColor: Color(0xf1995689),
        onPressed: () {
          Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => RecruitWrite_speedy(userEmail:userEmail))
          );
        },
      ),
    );
  }
}


const String _svg_hr49fj =
    '<svg viewBox="27.5 253.0 374.0 1.0" ><path transform="translate(27.5, 253.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.7" stroke="#707070" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xhr1yj =
    '<svg viewBox="27.0 106.0 187.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 187 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
