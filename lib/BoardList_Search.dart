//import 'dart:js';
import 'package:favorite_button/favorite_button.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hanmodumo/BoardList_Search_1.dart';
import 'BoardList_Main.dart';
import 'Home.dart';
import 'Recruit.dart';
import 'SearchTab.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as html;
import 'package:html/parser.dart' as parser;
import  'Settings.dart' as st;
import 'TimeTable.dart';

//학과별 게시판 첫페이지 학과쫙드는 페이지

class BoardList_Search extends StatefulWidget {

  BoardList_Search(
      {Key? key, required this.userEmail})
      : super(key: key);
  final String userEmail;

  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  @override
  State<BoardList_Search> createState() =>
      _MyBoardList_Search(this.userEmail);
}

class _MyBoardList_Search  extends State<BoardList_Search> {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final String userEmail;

  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // 컬렉션명
  final String colName = "department";
  // 필드명
  final String BigName = "대학";
  final String SmallName = "학부";
  final String bookmark = "즐겨찾기";



  //크롤링
  String keywords='';
  String noticeLink='';

  bool _isFavourite = false;

  // List<int> selectedIndex = [];
  // List<bool> isFavourite=[];
  List<bool> isFavourite=[];

  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  Future<bool> onlikeTapped (bool _isFavourite) async{
    return !_isFavourite;
  }

  _MyBoardList_Search(this.userEmail);

  //크롤링
  void crawllingend(String doc) async{
    http.Response response = await http.get(Uri.parse(doc));
    html.Document document = parser.parse(response.body);
    List<html.Element> keywordElements = document.querySelectorAll('._artclTdTitle>a');
    keywords = crawling(keywordElements)!;
    noticeLink = crawlingLink(keywordElements)!;
  }
  //공지 불러오기
  String? crawling(List<html.Element> keywordElements) {
    String? keywords='';
    int i=0;//공지번호(최근순)
    for (var element in keywordElements) {
      if(i==1)
        break;
      html.Element? rank = element.querySelector('strong');
      keywords = rank?.text;
      i++;
    }

    return keywords;
  }
  //링크 불러오기
  String? crawlingLink(List<html.Element> keywordElements){
    String? noticeLink='';
    int i=0;//공지번호(최근순)
    for (var element in keywordElements) {
      if(i==1)
        break;
      noticeLink = element.attributes['href'];
      print(noticeLink);
      i++;
    }
    return noticeLink;
  }

  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc){
      //showReadDocSnackBar(doc);
    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[BigName];
    _undDescCon.text = doc[SmallName];
  }
//즐겨찾기 문서 생성 (Create)
  void createDoc(String smallName, String bookmarkState) {
    FirebaseFirestore.instance.collection("userInformation/$userEmail/bookmark_board").add({
      SmallName: smallName,
      bookmark: bookmarkState
    });
  }
  // //즐겨찾기 문서 생성 (Create)
  // void createStarDoc(String smallName, String bookmarkState) {
  //   FirebaseFirestore.instance.collection(colName).add({
  //     bookmark: bookmarkState
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    print("*********");
    print(userEmail);
    print("*********");
    keywords="";
    noticeLink="";
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
                      '학과별 게시판',
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
                          height: deviceheight-220,//클수록 크기 작아짐

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
                                      //Timestamp tt = document["datetime"];
                                      // DateTime dt = DateTime.fromMicrosecondsSinceEpoch(
                                      //     tt.microsecondsSinceEpoch);

                                      return Expanded(
                                        child: InkWell(
                                          // Read Document
                                          onTap: () {
                                            setState(() { // setState() 추가.

                                              print("document[학과공지사항] : ${document["학과공지사항"]}");
                                              // showDocument(document.id);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => BoardList_Search_1(thisID : document.get(SmallName),noticeLink: document["학과공지사항"], userEmail: userEmail,),
                                                ),
                                              );
                                            });
                                            // showDocument(document.id);
                                          },
                                          // Update or Delete Document
                                          onLongPress: () {
                                            showUpdateOrDeleteDocDialog(document);
                                          },

                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  child: Text(" "
                                                  ),
                                                ),

                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      document[SmallName],
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
                                                        createDoc(document[SmallName],'N');
                                                      },
                                                    ),
                                                    //즐겨찾기 아이콘추가
                                                    // IconButton( icon: _isFavourite ? Icon(
                                                    //   Icons.star_outlined,
                                                    //   color: Colors.yellow[600],
                                                    // )
                                                    //     : Icon(Icons.star_outline_rounded),
                                                    //     onPressed: () {
                                                    //       //createDoc(document[SmallName]);
                                                    //       if (_isFavourite) {
                                                    //         _isFavourite = false;
                                                    //         setState(() {
                                                    //         });
                                                    //       }
                                                    //       else {
                                                    //         print(true);
                                                    //         _isFavourite = true;
                                                    //         setState(() {
                                                    //         });
                                                    //       }
                                                    // }
                                                    // ),
                                                    //기본즐겨찾기버튼 색변화x
                                                    // Container(
                                                    //   child: IconButton(
                                                    //     icon: Icon(Icons.star_outline_rounded),
                                                    //     color: Colors.black.withOpacity(0.71),
                                                    //     iconSize: 25,
                                                    //     onPressed: ()async {
                                                    //       createDoc(document[SmallName]);
                                                    //       Navigator.pop(context);
                                                    //     },
                                                    //   ),
                                                    // ),
                                                  ],
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