import 'package:english_words/english_words.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'package:hanmodumo/BoardWriteFlutterLayout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home.dart';
import 'Scrap.dart';
import 'package:image_picker/image_picker.dart';
import 'Board_Search.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:favorite_button/favorite_button.dart';

// 게시글클릭화면
class Board_page extends StatefulWidget {
  Board_page(
    this.boardName,
    this.colName,
    this.postnumber,
    this.dTitle,
    this.dDescription,
    this.dTime, {
    Key? key,
    this.vote,
    this.userEmail,
        this.comment_N,
        this.comment
  }) : super(key: key);
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  final String boardName;
  final String colName;
  final String dTitle; //제목
  //final String dCondition; //조건
  //final int dMax; //최대인원
  //final int dCurrent; //현재인원
  final String dDescription; //내용
  final Timestamp dTime;
  String? vote = "N";

  //final String post_number = "게시글번호";
  //final String col_name = "컬랙션명";
  final postnumber;
  final userEmail; //유저이멩일
  final comment;
  final comment_N;
  bool Full = true;

  @override
  State<Board_page> createState() => _MyBoardPage(
        boardName,
        colName,
        postnumber,
        dTitle,
        dDescription,
        dTime,
        userEmail,
        comment,
        comment_N
      );
}

Widget vote_list(String voteText) {
  return Row(
    children: <Widget>[
      Container(
        height: 30,
        width: 330,
        color: const Color(0xff995689),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
            children: <Widget>[
              Container(
                child: Text(voteText),
              ),
            ]),
      ),
      Container(
        child: IconButton(
          icon: Icon(Icons.home_outlined),
          color: Colors.black.withOpacity(0.71),
          iconSize: 20,
          onPressed: () {
            // Navigator.pop(context, false);
          },
        ),
      ),
    ],
  );
}

//댓글&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

Object? get isEmpty => null;

final formKey = GlobalKey<FormState>();
int _counter = 0;
int _likeCount = 0;
int accuseCount = 0;
final uid = FirebaseAuth.instance.currentUser?.uid;

final TextEditingController commentController = TextEditingController();
final TextEditingController commentController2 = TextEditingController();
List filedata = [];
FirebaseFirestore firestore = FirebaseFirestore.instance;
final storage = FlutterSecureStorage();
var doc = FirebaseFirestore.instance
    .collection('userInformation')
    .doc('rlaskgus03@hs.ac.kr')
    .collection('accuse')
    .doc('WmN9aNbDgVjiZxdvwLVt');

List<Widget> bodyElements = [];
bool _isLiked = false;
final List<WordPair> pair = <WordPair>[];
final Set<WordPair> _saved = Set<WordPair>();
final TextStyle_biggerFont = const TextStyle(fontSize: 17.0);

// static String? get userEmail => null;

Future<bool> onlikeTapped(bool _isLiked) async {
  return !_isLiked;
}

// Widget _buildRow(WordPair pair) {
//   final bool alreadySaved = _saved.contains(pair);
//   return ListTile(
//     title: Text(
//       pair.asPascalCase,
//       style: TextStyle_biggerFont,
//     ),
//     trailing: Icon(
//       alreadySaved ? Icons.favorite : Icons.favorite_border,
//       color: alreadySaved? Colors.red : null,
//     ),
//     onTap: () {
//       if (alreadySaved) {
//         _saved.remove(pair);
//       }
//       else {
//         _saved.add(pair);
//       }
//     },
//   );
// }

void AccuseCount() {
  accuseCount++;
}

//**************************************

class _MyBoardPage extends State<Board_page> {
  FirebaseFirestore Firestore = FirebaseFirestore.instance;

  //_counter의 값을 저장하기
  void setData(int value) async {
    var key = '_counter';
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt(key, value);
  }

  void loadData() async {
    var key = '_counter';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getInt(key);
      if (value == null)
        _counter = 1;
      else
        _counter = value;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      setData(_counter);
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // 필드명
  final String TITLE = "제목";
  final String DESCRIPTION = "설명";
  final String DATE_CREATED = "시간";
  final String CONDITION = "조건";
  final String MAXIMUM_NUMBER = "최대인원";
  final String CURRENT_NUMBER = "현재인원";
  final String MEMBER = "회원고유번호";
  final String post_number = "게시글번호";
  final String col_name = "컬랙션명";
  final String d_Title = "제목";
  final String d_Description = "내용";
  final String BOARDNAME = "게시판명";
  final String DTIME = "작성시간";

  //컬랙션명
  final String voteCol = "votepost";
  final String imageCol = "imagepost";

  //데이터
  final String colName;
  final String dTitle; //제목
  final String dDescription; //내용
  final Timestamp dTime;
  final String boardName;
  final int postnumber; //게시글번호
  final String userEmail;

  //댓글
  final String comment_N;
  final String comment;

  //checkbox
  bool isChecked = false;

  //vote
  int voteCnt = 1; //투표총량
  String vote3Name = "투표1이름";
  String vote4Name = "투표1이름";
  double vote1Cnt = 0; //투표1를 투표 총량으로 나눈 수
  double vote2Cnt = 0;
  double vote3Cnt = 0;
  double vote4Cnt = 0;
  double vote1 = 0; // 투표 1 개수
  double vote2 = 0;
  double vote3 = 0;
  double vote4 = 0;
  int voteid = 0;
  int accuseCount = 0;

  //vote visibility
  bool _Imagevisibility = false;
  bool _Vote3visibility = false;
  bool _Vote4visibility = false;
  bool _VoteDoVisibility = true;

  //image
  var userImage;

  _MyBoardPage(this.boardName, this.colName, this.postnumber, this.dTitle,
      this.dDescription, this.dTime, this.userEmail, this.comment_N, this.comment);

  // 문서 생성 (Create)
  void createDoc(String title, String content, String condition, int max,
      int min, String member_identification_number) {
    FirebaseFirestore.instance.collection(colName).add({
      TITLE: title,
      DESCRIPTION: content,
      CONDITION: condition,
      MAXIMUM_NUMBER: max,
      CURRENT_NUMBER: min,
      DATE_CREATED: Timestamp.now(),
      MEMBER: member_identification_number,
    });
  }

  // 스크랩 문서 생성 (Create)
  void createDoc1(int postNumber, String col_Name, String dTitle,
      String dDescription, String boardName, Timestamp dTime) {
    FirebaseFirestore.instance
        .collection("/userInformation/$userEmail/scrap")
        .add({
      post_number: postNumber,
      col_name: col_Name,
      d_Title: dTitle,
      d_Description: dDescription,
      BOARDNAME: boardName,
      DTIME: dTime
    });
  }

  // 투표 문서 갱신 (Update)
  void updateVote(String vote, int voteCnt) {
    FirebaseFirestore.instance
        .collection(voteCol)
        .where("게시판이름", isEqualTo: colName)
        .where("게시글번호", isEqualTo: postnumber)
        .get()
        .then((value) => value.docs.forEach((element) {
              element.reference.update({vote: voteCnt});
            }));
  }

  //댓글 문서 생성 (Create)
  void CreateDoc2(int commentNumber, String commentt) {
    FirebaseFirestore.instance
        .collection("/userInformation/$userEmail/comment")
        .add({
      comment_N : commentNumber,
      comment : commentt
    });
  }

  //유저 이메일, 댓글 내용, 좋아요, 여튼 DB에 연결해야함

  void voteVisibilityCon(DocumentSnapshot document) {
    if (document["투표수"] == 3) {
      vote3Name = "투표3이름";
      _Vote3visibility = true;
    }
    if (document["투표수"] == 4) {
      vote3Name = "투표4이름";
      _Vote4visibility = true;
    }
  }

  void AccuseCount() {
    accuseCount++;
  }

  @override
  Widget build(BuildContext context) {
    print("colName:" + colName);
    print("boardName:" + boardName);
    print("dTitle:" + dTitle);
    print("dDescription:" + dDescription);
    // print("vote:"+vote);
    // print("userEmail:"+userEmail);
    print("********");
    print(postnumber);
    print(colName);
    print("********");

    /////////댓글
    Widget commentChild(data) {
      final bool alreadySaved = _saved.contains(pair);
      return ListView(children: [
        for (var i = 0; i < data.length; i++)
          Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
              child: ListTile(
                  leading: GestureDetector(
                    onTap: () async {
                      // Display the image in large form.
                      print("Comment Clicked");
                    },
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  title: Text(
                    data[i]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(data[i]['message']),
                  trailing:
                      Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    IconButton(
                        onPressed: () {
                          setState(() {
                            var value = {
                              'name': '익명' + '$_counter',
                              'message': '@' +
                                  data[i]['name'] +
                                  ' ' +
                                  commentController2.text
                            };
                            filedata.insert(0, value);
                            _counter++;
                          });
                          // Card(
                          //      child: Container(
                          //         height: 50.0,
                          //         width: 50.0,
                          //         decoration: new BoxDecoration(
                          //             color: Colors.blue,
                          //             borderRadius: new BorderRadius.all(Radius.circular(50))),
                          //
                          //       ),
                          //     child: ListTile(
                          //     title: Text(
                          //     '익명1',
                          //     style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // subtitle: Text('안녕'),
                          // trailing:  Row(
                          // mainAxisSize: MainAxisSize.min,
                          // children: <Widget>[
                          //   IconButton( icon: _isLiked
                          //       ? Icon(
                          //     Icons.favorite,
                          //     color: Colors.blue,
                          //   )
                          //       : Icon(Icons.favorite_border),
                          //       onPressed: () {
                          //         if (_isLiked) {
                          //           _likeCount--;
                          //           _isLiked = false;
                          //           setState(() {
                          //
                          //           });
                          //           print(_likeCount);}
                          //         else {
                          //           print(true);
                          //
                          //           _likeCount++;
                          //           _isLiked = true;
                          //           setState(() {
                          //           });
                          //           print(_likeCount);
                          //
                          //
                          //           //   _counter2++;
                          //           //   setState(() {
                          //           //   });
                          //           // }, icon: Icon(Icons.favorite)),
                          //           // Text('$_counter2')
                          //
                          //         }}),
                          //   Text('$_likeCount')
                          //
                          // ])));
                          // }, icon: Icon(Icons.comment)),
                          // IconButton(onPressed: () {
                          //   setState(() {
                          //   });
                        },
                        icon: Icon(Icons.mail)),
                    IconButton(
                        onPressed: () {
                          AccuseCount();
                          doc
                              .update({
                                '신고': FieldValue.increment(1)
                              }) // <-- Updated data
                              .then((_) => print('Success'))
                              .catchError((error) => print('Failed: $error'));
                          flutterToast();
                        },
                        icon: Icon(Icons.not_interested)),
                        FavoriteButton(
                          isFavorite: true,
                            iconSize: 30,
                          // iconDisabledColor: Colors.white,
                          valueChanged: (_isFavorite) {
                            print('Is Favorite : $_isFavorite');
                          },
                        )
                    ,Text('$_likeCount')
                  ])))
      ]);
    }

    ///////////////////댓글

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIOverlays([]);
    var date =
        DateTime.fromMicrosecondsSinceEpoch(dTime.microsecondsSinceEpoch);
    String dtimeformat = DateFormat('yy/MM/dd HH:mm').format(date);


    //이미지 불러오기
    FirebaseStorage.instance
        .ref()
        .child(colName)
        .child('1_1.jpeg');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          boardName,
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 20,
            color: const Color(0xff995689),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
//         actions: [
//           Container(
//               child: IconButton(
//                 padding: EdgeInsets.zero,
// // 패딩 설정
//                 constraints: const BoxConstraints(),
// // constraints
//                 icon: Icon(Icons.mail_outline),
//                 color: Colors.black.withOpacity(0.71),
//                 onPressed: () {
//                 },
//               ),
//               margin: const EdgeInsets.only(right: 30)),
//         ],
        backgroundColor: Colors.white30,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Row(children: [
            Container(
              child: Icon(
                Icons.face,
                color: Colors.black.withOpacity(0.71),
                size: 24,
              ),
              margin: const EdgeInsets.only(left: 18.0),
            ),
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '익명',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 12,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Container(
                        child: Text(
                          dtimeformat,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        ),
                      )
                    ]),
                margin: EdgeInsets.only(left: 5))
          ])),
          //선
          Container(
              height: 1.0,
              width: deviceWidth - 40,
              color: Colors.black.withOpacity(0.4),
              margin: const EdgeInsets.only(left: 20, top: 5)),
          Container(
            height: 30,
            width:deviceWidth - 40,
            child: Expanded(
              child: Text(
                dTitle,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // padding: const EdgeInsets.fromLTRB(40,90,0,0),
            margin: const EdgeInsets.only(left: 20, top: 10),
          ),
          // Container(
          //     height: 1.0,
          //     width: deviceWidth - 40,
          //     color: Colors.black.withOpacity(0.4),
          //     margin: const EdgeInsets.only(left: 20, top: 5)),
          Expanded(child:  Container(
            width: deviceWidth - 40,
            height: (deviceheight / 5),
            child: Text(
              dDescription,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
            ),
            margin: const EdgeInsets.only(left: 20, top: 10),
          ),),
          Row(children: <Widget>[
            SizedBox(
              width: 30,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Color(0xff995689),
                padding:
                    EdgeInsets.symmetric(horizontal: 30), //스크랩버튼가로길이 텍스트와의 공백
              ),
              onPressed: () async {
                createDoc1(postnumber, colName, dTitle, dDescription, boardName,
                    dTime);
                Navigator.pop(context);
                //수정
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Scrap()),
                // );
              },
              child: Text('스크랩'),
            ),
            TextButton.icon(
              //style: outlineButtonStyle,
              onPressed: () {
                AccuseCount();
                FirebaseFirestore.instance
                    .collection(colName)
                    .doc(this.post_number)
                    .set({'신고': 0, post_number: postnumber});
                FirebaseFirestore.instance
                    .collection(colName)
                    .doc(this.post_number)
                    .update({'신고': FieldValue.increment(1)}) // <-- Updated data
                    .then((_) => print('Success'))
                    .catchError((error) => print('Failed: $error'));
                flutterToast();
                bool doc = true;
                doc = FirebaseFirestore.instance
                    .collection(colName)
                    .where("신고", isEqualTo: 5) as bool;
                if (doc) {
                  FirebaseFirestore.instance
                      .collection(colName)
                      .doc("$postnumber")
                      .delete()
                      .then((_) => print('Success'))
                      .catchError((error) => print('Failed: $error'));
                }
                //String? valueFromFirebase;
                Future<String?> getData() async {
                  //   var a = await clubData.doc('board_free').get();
                  //   setState(() {
                  //     valueFromFirebase= a['게시글번호'];
                  //   });
                }
                //수정
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Scrap()),
                // );
              },
              icon: Icon(Icons.not_interested),
              label: Text("신고하기", style: TextStyle(color: Color(0xff995689))),
            ),
            TextButton.icon(
              onPressed: () {
                _incrementCounter();
              },
              label: Text('좋아요' + '$_counter'),
              icon: Icon(Icons.thumb_up),
            )
          ]),
          // SizedBox(height:deviceheight/5,
          // child:Row(children: [
          //   Expanded(child: Container(child: Text("이미지자리"),))
          // ],)),
          //투표
          SizedBox(
            height: deviceheight / 6,
            child: StreamBuilder(
              stream: Firestore.collection(voteCol)
                  .where("게시글번호", isEqualTo: postnumber)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Text("투표를 불러오는 중입니다...");
                  default:
                    return ListView(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        //Timestamp tt = document["datetime"];
                        // DateTime dt = DateTime.fromMicrosecondsSinceEpoch(
                        //     tt.microsecondsSinceEpoch);
                        voteVisibilityCon(document); //투표 3개 이상시 보여지게
                        voteCnt = document["투표수"];
                        int vote3 = voteCnt;
                        int vote4 = voteCnt;
                        int totalVote = document["투표수1"] + document["투표수2"];
                        if (voteCnt == 3) {
                          vote3 = 3;
                          int vote3Cnt = document["투표수3"];
                          totalVote += vote3Cnt;
                        }
                        if (voteCnt == 4) {
                          vote4 = 4;
                          int vote4Cnt = document["투표수4"];
                          totalVote += vote4Cnt;
                        }
                        if (totalVote == 0) {
                          totalVote = 1;
                        }

                        return Expanded(
                          child: InkWell(
                            // Read Document
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => Board_page(thisID, colName, document[boardTitle], document[boardContents], Timestamp.now())),
                              // );
                            },
                            // Update or Delete Document
                            onLongPress: () {},
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(children: <Widget>[
                                      Container(
                                        child: new LinearPercentIndicator(
                                          width: deviceWidth - 100,
                                          animation: true,
                                          lineHeight: 20.0,
                                          animationDuration: 800,
                                          percent: document["투표수1"] / totalVote,
                                          center: Text(
                                              "${document["투표1이름"]} : ${document["투표수1"]}"),
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor:
                                              const Color(0xffab6caa),
                                        ),
                                        margin: EdgeInsets.only(bottom: 10),
                                      ),
                                      Visibility(
                                        child: Container(
                                          child: IconButton(
                                            padding: EdgeInsets.only(bottom:10),
                                            constraints: const BoxConstraints(),
                                            icon: Icon(Icons.done),
                                            color:
                                                Colors.black.withOpacity(0.71),
                                            iconSize: 20,
                                            onPressed: () {
                                              setState(() {
                                                updateVote("투표수1",
                                                    document["투표수1"] + 1);
                                                _VoteDoVisibility =
                                                    !_VoteDoVisibility;
                                              });
                                            },
                                          ),
                                        ),
                                        visible: _VoteDoVisibility,
                                      )
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: <Widget>[
                                      Container(
                                        child: new LinearPercentIndicator(
                                          width: deviceWidth - 100,
                                          animation: true,
                                          lineHeight: 20.0,
                                          animationDuration: 800,
                                          percent: document["투표수2"] / totalVote,
                                          center: Text(
                                              "${document["투표2이름"]} : ${document["투표수2"]}"),
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor:
                                              const Color(0xffab6caa),
                                        ),
                                        margin: EdgeInsets.only(bottom: 10),
                                      ),
                                      Visibility(
                                        child: Container(
                                          child: IconButton(
                                            padding: EdgeInsets.only(bottom:10),
                                            constraints: const BoxConstraints(),
                                            icon: Icon(Icons.done),
                                            color:
                                                Colors.black.withOpacity(0.71),
                                            iconSize: 20,
                                            onPressed: () {
                                              setState(() {
                                                updateVote("투표수2",
                                                    document["투표수2"] + 1);
                                                _VoteDoVisibility =
                                                !_VoteDoVisibility;
                                              });
                                            },
                                          ),
                                        ),
                                        visible: _VoteDoVisibility,
                                      )
                                    ]),
                                  ),
                                  Visibility(
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                40),
                                        // color: Colors.black.withOpacity(0.05),
                                        child: Container(
                                          child: Row(children: <Widget>[
                                            Container(
                                              child: new LinearPercentIndicator(
                                                width: deviceWidth - 100,
                                                animation: true,
                                                lineHeight: 20.0,
                                                animationDuration: 800,
                                                percent:
                                                    document["투표수${vote3}"] /
                                                        totalVote,
                                                center: Text(
                                                    "${document["투표${vote3}이름"]} : ${document["투표수${vote3}"]}"),
                                                linearStrokeCap:
                                                    LinearStrokeCap.roundAll,
                                                progressColor:
                                                    const Color(0xffab6caa),
                                              ),
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                            ),
                                            Visibility(
                                              child: Container(
                                                child: IconButton(
                                                  padding: EdgeInsets.only(bottom:10),
                                                  constraints:
                                                      const BoxConstraints(),
                                                  icon: Icon(Icons.done),
                                                  color: Colors.black
                                                      .withOpacity(0.71),
                                                  iconSize: 20,
                                                  onPressed: () {
                                                    setState(() {
                                                      updateVote("투표수3",
                                                          document["투표수3"] + 1);
                                                      _VoteDoVisibility =
                                                      !_VoteDoVisibility;
                                                    });
                                                  },
                                                ),
                                              ),
                                              visible: _VoteDoVisibility,
                                            )
                                          ]),
                                        ),
                                      ),
                                      visible: _Vote3visibility),
                                  Visibility(
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                40),
                                        // color: Colors.black.withOpacity(0.05),
                                        child: Container(
                                          child: Row(children: <Widget>[
                                            Container(
                                              child: new LinearPercentIndicator(
                                                width: deviceWidth - 100,
                                                animation: true,
                                                lineHeight: 20.0,
                                                animationDuration: 800,
                                                percent:
                                                    document["투표수${vote4}"] /
                                                        totalVote,
                                                center: Text(
                                                    "${document["투표${vote4}이름"]} : ${document["투표수${vote4}"]}"),
                                                linearStrokeCap:
                                                    LinearStrokeCap.roundAll,
                                                progressColor:
                                                    const Color(0xffab6caa),
                                              ),
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                            ),
                                            Visibility(
                                              child: Container(
                                                child: IconButton(
                                                  padding: EdgeInsets.only(bottom:10),
                                                  constraints:
                                                      const BoxConstraints(),
                                                  icon: Icon(Icons.done),
                                                  color: Colors.black
                                                      .withOpacity(0.71),
                                                  iconSize: 20,
                                                  onPressed: () {
                                                    setState(() {
                                                      updateVote("투표수4",
                                                          document["투표수4"] + 1);
                                                      _VoteDoVisibility =
                                                      !_VoteDoVisibility;
                                                    });
                                                  },
                                                ),
                                              ),
                                              visible: _VoteDoVisibility,
                                            )
                                          ]),
                                        ),
                                      ),
                                      visible: _Vote4visibility),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                    return SizedBox.shrink();
                }
              },
            ),
          ),
          Expanded(
            child: CommentBox(
              userImage: "",
              child: commentChild(filedata),
              labelText: 'Write a comment...',
              withBorder: false,
              errorText: 'Comment cannot be blank',
              sendButtonMethod: () {
                CreateDoc2(_counter, commentController.text);
                if (formKey.currentState!.validate()) {
                  print(commentController.text);
                  setState(() {
                    var value = {
                      'name': '익명' + '$_counter',
                      'message': commentController.text
                    };
                    filedata.insert(0, value);
                    _counter++;
                  });
                  commentController.clear();
                  FocusScope.of(context).unfocus();
                } else {
                  print("Not validated");
                }
              },
              formKey: formKey,
              commentController: commentController,
              backgroundColor: Colors.grey,
              textColor: Colors.white,
              sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: '신고되었습니다',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
