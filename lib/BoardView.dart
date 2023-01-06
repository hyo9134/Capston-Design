// import 'dart:html';

// import 'dart:html';

// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Home.dart';

class BoardView extends StatelessWidget {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // 컬렉션명
  final String colName = "board_department";
  // 필드명

  final String boardTitle = "게시글제목";
  final String boardContents = "게시글내용";
  final String boardDepartment = "학부";




  TextEditingController _newNameCon = TextEditingController();
  TextEditingController _newDescCon = TextEditingController();
  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();


  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(thisID1).get().then((doc){
      //showReadDocSnackBar(doc);
    });
  }



  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[boardTitle];
    _undDescCon.text = doc[boardContents];
  }



  BoardView({
    Key ?key, required this.thisID1,  required this.thisID2,
  }) : super(key: key);

  final String thisID1; //글의 아이디 받음
  final String thisID2; //학부이름 받음


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 226.0, start: 132.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: const Color(0x73d8b9d2)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 270.0, middle: 0.654),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: const Color(0x73d8b9d2)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              boardTitle,
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
            Pin(size: 240.0, start: 40.0),
            Pin(size: 24.0, start: 137.0),
            child: Text( boardContents,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 27.0),
            Pin(size: 23.0, start: 26.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.4961),
            Pin(size: 43.0, end: 23.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/outline_home_black_24dp.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, end: 26.0),
            Pin(size: 37.0, end: 26.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.2781),
            Pin(size: 36.0, end: 27.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, start: 28.0),
            Pin(size: 36.0, end: 27.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.7195),
            Pin(size: 43.0, end: 23.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, start: 27.0),
            Pin(size: 17.0, middle: 0.4477),
            child: Text(
              '댓글',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
//파이어베이스 불러오는부분

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
                        width: 432.0,
                        height: 650.0,

                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance.collection(colName).where("학부", isEqualTo: thisID2).snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Text("게시판 정보를 불러오는 중입니다...");
                              default:
                                return

                                  ListView(
                                  children: snapshot.data!.docs
                                      .map((DocumentSnapshot document) {
                                    //Timestamp tt = document["datetime"];
                                    // DateTime dt = DateTime.fromMicrosecondsSinceEpoch(
                                    //     tt.microsecondsSinceEpoch);

                                    return Expanded(
                                      child: InkWell(
                                        // Read Document
                                        // onTap: () {
                                        //   showDocument(document.id);
                                        //   Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(builder: (context) => Home()),
                                        //   );
                                        // },
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
          Pinned.fromPins(
            Pin(size: 20.0, end: 27.0),
            Pin(size: 20.0, start: 80.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, start: 59.0),
            Pin(size: 21.0, start: 78.0),
            child: Text(
              '익명12345',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 32.0),
            Pin(size: 15.0, start: 103.0),
            child: Text(
              '2022-05-27 / 15:47',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 32.0),
            Pin(size: 23.0, start: 77.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 329.0, end: 32.0),
            Pin(size: 41.0, middle: 0.6203),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 45.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 45.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, start: 0.0),
                  Pin(size: 19.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 21.0),
                  Pin(size: 18.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 329.0, end: 32.0),
            Pin(size: 41.0, middle: 0.6689),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 45.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 45.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, start: 0.0),
                  Pin(size: 19.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 21.0),
                  Pin(size: 18.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, start: 167.0),
            child: SvgPicture.string(
              _svg_fmuelq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.5243),
            child: SvgPicture.string(
              _svg_ipd6pa,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.693),
            child: SvgPicture.string(
              _svg_lm1n4i,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 32.0),
            Pin(size: 45.0, middle: 0.4938),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 25.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 25.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 0.0),
                  Pin(size: 18.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, end: 24.0),
                  Pin(size: 19.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 32.0),
            Pin(size: 45.0, middle: 0.7333),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 25.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 25.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 0.0),
                  Pin(size: 18.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, end: 24.0),
                  Pin(size: 19.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 32.0),
            Pin(size: 45.0, middle: 0.563),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 25.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 25.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 0.0),
                  Pin(size: 18.0, start: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, end: 24.0),
                  Pin(size: 19.0, start: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
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

const String _svg_fmuelq =
    '<svg viewBox="27.0 167.0 374.0 1.0" ><path transform="translate(27.0, 167.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ipd6pa =
    '<svg viewBox="27.0 485.0 374.0 1.0" ><path transform="translate(27.0, 485.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lm1n4i =
    '<svg viewBox="27.0 641.0 374.0 1.0" ><path transform="translate(27.0, 641.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
