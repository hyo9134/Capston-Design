import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hanmodumo/Board_page.dart';

import 'Home.dart';
import 'firebase_options.dart';


class SearchTabBoard extends StatefulWidget {


  const SearchTabBoard(this.colName,this.boardName, this.title, this.content, this.userEmail, {Key? key}) : super(key: key);

  final String boardName;
  final String title; // 제목
  final String content; //내용
  final String colName; //내용
  final String userEmail; //유저 이메일
  @override
  State<SearchTabBoard> createState() => _MyAppState(colName,boardName,title,content,userEmail);
}

class _MyAppState extends State<SearchTabBoard> {
  String name = "";
  String boardName = "";
  String title = "";
  String content = "";
  String colName="";
  String userEmail = "";

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board_page(boardName, colName,data["게시글번호"], data["게시글제목"], data["게시글내용"], data["수정일"], userEmail: userEmail)),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board_page(boardName, colName,data["게시글번호"], data["게시글제목"], data["게시글내용"], data["수정일"])),
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