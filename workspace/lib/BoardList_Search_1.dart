//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/Board_page.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BoardList_Main.dart';
import 'BoardWriteFlutterLayout2.dart';
import 'Home.dart';
import 'Recruit.dart';
import 'SearchTab.dart';
import 'TimeTable.dart';
import 'Settings.dart' as st;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as html;
import 'package:html/parser.dart' as parser;

//학과별 게시판

String HSNOTICELINK = "https://www.hs.ac.kr";

class BoardList_Search_1 extends StatefulWidget {


  BoardList_Search_1 ({
    Key ?key, required this.thisID, required this.noticeLink,required this.userEmail,
  }) : super(key: key);
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final String userEmail;

  final String thisID;
  final String noticeLink;

  @override
  State<BoardList_Search_1> createState() =>
      _MyBoardList_Search_1(thisID,noticeLink ,userEmail);
}


class _MyBoardList_Search_1 extends State<BoardList_Search_1> {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final String userEmail;
  // 컬렉션명
  final String colName = "board_department";
  // 필드명
  final String boardTitle = "게시글제목";
  final String boardContents = "게시글내용";
  final String boardDepartment = "학부";
 // var contentsID ;


  // static const String thisID1 =thisID;

  TextEditingController _undNameCon = TextEditingController();
  TextEditingController _undDescCon = TextEditingController();

  String thisID;
  //크롤링
  late String keywords='공지가 없습니다.';
  String noticeLink;

  _MyBoardList_Search_1(
      this.thisID,this.noticeLink, this.userEmail);


  //크롤링
  void crawllingend(String doc) async{
    print("parameter noticeLink : $noticeLink");
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
    setState(() {
      for (var element in keywordElements) {
        if(i==1)
          break;
        keywords = element.querySelector('strong')?.text;

        print("function : "+keywords!);
        i++;
      }
    });
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
      print("noticelink: ${noticeLink}");
      i++;
    }
    return noticeLink;
  }


  //문서조회
  void showDocument(String documentID) {
    FirebaseFirestore.instance.collection(colName).doc(documentID).get().then((doc){

    });
  }

  void showUpdateOrDeleteDocDialog(DocumentSnapshot doc) {
    _undNameCon.text = doc[boardTitle];
    _undDescCon.text = doc[boardContents];

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

  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;
    int iconSize = 24;

    print("userEmail*********************************************");
    print(userEmail);
    print("userEmail*********************************************");

    crawllingend(noticeLink);
    print("keywords : $keywords");
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
          '학과게시판',
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
            // Pin(size: 450.0, start: 128.0),
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
          //공지사항 버튼
          Container(
            child: Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: deviceWidth - 40,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
// color: const Color(0x91995689),
                        color: const Color(0xff995689),
                      ),
                    ),
                    child:
//                    ValueListenableBuilder(
//                      valueListenable: keywords, // 사용할 변수를 지정. _counter가 변경 되면 자동 호출
//                      builder: (BuildContext context, int value, Widget? child) {
//                        // value = _counter 로 적용
//                        return Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                          children: <Widget>[
//                          Container(
//                       child: IconButton(
//                           padding: EdgeInsets.zero,
// // 패딩 설정
//                           constraints: const BoxConstraints(),
//                           onPressed: () {},
//                           icon: Icon(Icons.campaign, color: Colors.red)),
//                       margin: const EdgeInsets.only(left: 5, right: 5),
//                     ),
//                            child!, // child는 아래 지정된 위젯으로 치환됨
//                          ],
//                        );
//                      },
//                      child: SizedBox(
//                         width: deviceWidth - 60 - iconSize - 18,
//                         child: new InkWell(
//                             child: new Text(
//                               '$keywords',
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             onTap: () => launchUrl(
//                                 Uri.parse(HSNOTICELINK + '$noticeLink'))
// //onTap: () => print()
//                         )),
//                    )
                    Row(children: [
                      Container(
                        child: IconButton(
                            padding: EdgeInsets.zero,
// 패딩 설정
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(Icons.campaign, color: Colors.red)),
                        margin: const EdgeInsets.only(left: 5, right: 5),
                      ),
                      SizedBox(
                          width: deviceWidth - 60 - iconSize - 18,
                          child: new InkWell(
                              child: new Text(
                                '$keywords',
                                overflow: TextOverflow.ellipsis,
                              ),
                              onTap: () => launchUrl(
                                  Uri.parse(HSNOTICELINK + '$noticeLink'))
//onTap: () => print()
                          ))
                    ]),
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 10)
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
                          height: deviceheight-270,//클수록 크기 작아짐

                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance.collection(colName).where("학부", isEqualTo: thisID). orderBy("작성일",descending: true).snapshots(),
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
                                              MaterialPageRoute(builder: (context) => Board_page(thisID, colName,document["게시글번호"], document[boardTitle], document[boardContents], Timestamp.now(), userEmail: userEmail)),
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

      //글쓰기
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
      floatingActionButton :FloatingActionButton(
        child: Icon(Icons.drive_file_rename_outline_outlined),
        backgroundColor: Color(0xf1995689),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BoardWriteFlutterLayout2("과목별게시판",colName,userEmail,thisID:thisID)),
          );
        },
      ),

    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}


class Firestore {
}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
