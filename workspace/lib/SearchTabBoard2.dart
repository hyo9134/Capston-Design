import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hanmodumo/Board_page.dart';

import 'Home.dart';
import 'Recruit_page.dart';
import 'firebase_options.dart';
//소모임 모집들 검색창

class SearchTabBoard2 extends StatefulWidget {


  const SearchTabBoard2(this.colName,this.boardName, this.title, this.content, this.userEmail, {Key? key}) : super(key: key);

  final String boardName;
  final String title; // 제목
  final String content; //내용
  final String colName; //내용
  final String userEmail; //유저 이메일





  @override
  State<SearchTabBoard2> createState() => _MyAppState(colName,boardName,title,content,userEmail);
}

class _MyAppState extends State<SearchTabBoard2> {
  String name = "";
  String boardName = "";
  String title = "";
  String content = "";
  String colName="";
  String userEmail = "";



//추가함

  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  final String RQCOlNAME = "recruitQuick";
  final String RSCOLNAME = "recruitStudy";
  //필드명
  final String TITLE = "제목";
  final String CONDITION = "조건";
  final String CURRENT_PERSONNEL = "현재인원";
  final String MAX_PERSONNEL = "최대인원";
  final String DESCRIPTION  = "설명";
  final String TIME = "시간";
  late DocumentSnapshot document;



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
  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();
  TextEditingController _undMxPnCon = TextEditingController();
  TextEditingController _undCrPnCon = TextEditingController();
  TextEditingController _searchCon = TextEditingController();


  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[TITLE];
    _undDescCon.text = doc[CONDITION];
    _undMxPnCon = doc[CURRENT_PERSONNEL];
    _undMxPnCon = doc[MAX_PERSONNEL];
  }





  _MyAppState(this.colName,this.boardName,this.title,this.content, String userEmail);

  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xffac6aa0),
            title: Card(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection(colName).snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshots.data!.docs[index].data()
                  as Map<String, dynamic>;

                  if (name.isEmpty) {
                    return InkWell(
                      // Read Document
                      onTap: () {
                        showDocument(document.id);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Recruit_page(boardName, document[TITLE],document[CONDITION],document[MAX_PERSONNEL],document[CURRENT_PERSONNEL],document[DESCRIPTION],document[TIME], userEmail: userEmail,)),
                        //Recruit_page(TITLE,CONDITION,MAX_PERSONNEL,CURRENT_PERSONNEL,DESCRIPTION,TIME)),
                              //Recruit_page(document[TITLE],document[CONDITION],document[MAX_PERSONNEL],document[CURRENT_PERSONNEL],document[DESCRIPTION],document[TIME])),
                              //Recruit_page(boardName, colName, data["게시글제목"], data["게시글내용"], data["수정일"], userEmail: userEmail)),
                        );
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
                                  data[title],
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
                                  data[content],
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 13,
                                    color: const Color(0xff000000),
                                  ),
                                )
                            )],
                        ),
                      ),
                    );
                  }
                  if (data[title]
                      .toString()
                      .toLowerCase()
                      .contains(name.toLowerCase())) {
                    return InkWell(
                      // Read Document
                      onTap: () {
                        showDocument(document.id);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Recruit_page(boardName, document[TITLE],document[CONDITION],document[MAX_PERSONNEL],document[CURRENT_PERSONNEL],document[DESCRIPTION],document[TIME], userEmail: userEmail,)),

                          //Board_page(boardName, colName, data["게시글제목"], data["게시글내용"], data["수정일"])),
                        );
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
                                  data[title],
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
                                  data[content],
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 13,
                                    color: const Color(0xff000000),
                                  ),
                                )
                            )],
                        ),
                      ),
                    );
                  }
                  return Container();
                });
          },
        ));
  }
}