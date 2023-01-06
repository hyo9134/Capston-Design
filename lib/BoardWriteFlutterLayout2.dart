import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Home.dart';
import 'Recruit.dart';
import 'TimeTable.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
//학과별 게시판 글쓰기

class BoardWriteFlutterLayout2 extends StatefulWidget {
  BoardWriteFlutterLayout2(
      this.boardName, this.colName, this.userEmail,{
    Key? key, required this.thisID,
  }) : super(key: key);

  final String thisID;//학부
  String boardName;
  String colName;
  var userEmail;

  @override
  State<BoardWriteFlutterLayout2> createState() => _MyBoardWriteFlutterLayout2(boardName,colName,userEmail,thisID);
}

class _MyBoardWriteFlutterLayout2 extends State<BoardWriteFlutterLayout2> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String boardName;
  String colName;
  String userEmail;
// 필드명
  final String col_name = "컬랙션명";
  final String board_name = "게시판제목";
  final String post_content = "게시글내용";
  final String post_number = "게시글번호";
  final String post_title = "게시글제목";
  final String date_modified = "수정일";
  final String date_created = "작성일";
  final String view_count = "조회수";
  final String number_recommedations = "추천수";
  final String category_number = "카테고리번호";
  final String voting = "투표";
  final String member_identification_number = "회원고유번호";
  final String image_count = "이미지수";
  final String boardDepartment = "학부";
  final String accuse_f = "신고";

  TextEditingController _newTitleCon = TextEditingController();
  TextEditingController _newContentCon = TextEditingController();
  TextEditingController _newVote1Con = TextEditingController();
  TextEditingController _newVote2Con = TextEditingController();
  TextEditingController _newVote3Con = TextEditingController();
  TextEditingController _newVote4Con = TextEditingController();

  // TextEditingController _undNameCon = TextEditingController();
  // TextEditingController _undDescCon = TextEditingController();

  //visibility
  bool isChecked = false;
  bool _Imagevisibility = false;
  bool _Votevisibility = false;
  bool _Votetempvisibility = true;
  bool _Votetemp2visibility = true;

  //이미지 아이콘
  IconData _ImageIcon = Icons.photo_camera;
  IconData _ImageAdd = Icons.photo_camera;
  IconData _ImageCancel = Icons.cancel;
  //데이터
  final String thisID;
  //투표 아이콘
  IconData _VoteIcon = Icons.how_to_vote;
  IconData _VoteAdd = Icons.how_to_vote;
  IconData _VoteCancel = Icons.cancel;

  //이미지
  final ImagePicker _picker = ImagePicker();
  List<XFile> _pickedImgs = [];

  //투표
  int voteCount = 0;
  List<Widget> voteElements = [];

  _MyBoardWriteFlutterLayout2(this.boardName,this.colName,this.userEmail,this.thisID);


// 문서 생성 (Create)
  void createDoc(
      String postTitle,
      String postContent,
      int postNum,
      DateTime dateModified,
      int postViewCount,
      int postNumberRecommedations,
      int categoryNumber,
      String postVoting,
      String memberIdentificationNumber,
      int ImageCount,
      String postDepartment,
      int accuse,
      String colName,
      String boardName) {
    FirebaseFirestore Firestore = FirebaseFirestore.instance;
    FirebaseFirestore.instance.collection(colName).add({
      post_content: postContent,
      post_number: postNum,
      post_title: postTitle,
      date_modified: dateModified,
      // date_created: Timestamp.now(),
      date_created: dateModified,
      view_count: postViewCount,
      number_recommedations: postNumberRecommedations,
      category_number: categoryNumber,
      voting: postVoting,
      member_identification_number: memberIdentificationNumber,
      image_count: ImageCount,
      boardDepartment: postDepartment,
      accuse_f: accuse,
      col_name:  colName,
      board_name : boardName
    });
  }

// 문서 갱신 (Update)
  void updateDoc(
      String docID,
      String postTitle,
      String postContent,
      int postNum,
      DateTime dateModified,
      int postViewCount,
      int postNumberRecommedations,
      int categoryNumber,
      String postVoting,
      String memberIdentificationNumber,
      String postDepartment,
      int accuse) {
    FirebaseFirestore.instance.collection(colName).doc(docID).update({
      post_content: postContent,
      post_number: postNum,
      post_title: postTitle,
      date_modified: dateModified,
      date_created: Timestamp.now(),
      view_count: postViewCount,
      number_recommedations: postNumberRecommedations,
      category_number: categoryNumber,
      voting: postVoting,
      member_identification_number: memberIdentificationNumber,
      boardDepartment: postDepartment,
      accuse_f: accuse
    });
  }
  Future<int> countDocuments() async {
    QuerySnapshot _myDoc = await  FirebaseFirestore.instance.collection(colName).get();
    List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    return _myDocCount.length;  // Count of Documents in Collection
  }
  //이미지 추가
  Future<void> _pickImg() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _pickedImgs = images;
      });
    }
  }

  //이미지 업로드
  Future _uploadImage() async {
    //문서개수 불러오기
    var docCount = countDocuments();
    // 스토리지에 먼저 사진 업로드 하는 부분.
    final firebaseStorageRef = FirebaseStorage.instance;
    for (int i = 0; i < _pickedImgs.length; i++) {
      File file = File(_pickedImgs[i].path);
      TaskSnapshot task = await firebaseStorageRef
          .ref() // 시작점
          .child(colName) // collection 이름
          .child("${colName}_"+"$docCount" + "_${i}") // 업로드한 파일의 최종이름, 본인이 원하는 이름.  //게시글번호 수정
          .putFile(file); //실제 이미지파일, 버전 ^7.0.0 에서는 onComplete 필요없음
      /*.onComplete; // 버전 ^4.0.1 에 해당 사항*/

      if (task != null) {
        // 업로드 완료되면 데이터의 주소를 얻을수 있음, future object
        var downloadUrl = await task.ref.getDownloadURL();

        var doc = FirebaseFirestore.instance.collection('imagepost').doc();
        doc.set({
          '게시글번호': docCount,
          'datetime': DateTime.now().toString(),
          '게시판이름': colName,
          '이미지수': _pickedImgs.length,
        }).then((onValue) {
          //정보 인서트후, 상위페이지로 이동
        });
      }
    }
  }
  void _uploadVote(){
    var docCount = countDocuments();
    var doc = FirebaseFirestore.instance.collection('votepost').doc();
    if(voteCount==2)
    {
      doc.set({
        '게시글번호': docCount,
        '게시판이름': colName,
        '투표수': voteCount,
        '투표1이름': _newVote1Con.text,
        '투표수1':0,
        '투표2이름': _newVote2Con.text,
        '투표수2':0,
      }).then((onValue) {
        //정보 인서트후, 상위페이지로 이동
      });
    }
    if(voteCount==3)
    {
      doc.set({
        '게시글번호': docCount,
        '게시판이름': colName,
        '투표수': voteCount,
        '투표1이름': _newVote1Con.text,
        '투표수1':0,
        '투표2이름': _newVote2Con.text,
        '투표수2':0,
        '투표3이름': _newVote3Con.text,
        '투표수3':0,
      }).then((onValue) {
        //정보 인서트후, 상위페이지로 이동
      });
    }
    if(voteCount==4)
    {
      doc.set({
        '게시글번호': docCount,
        '게시판이름': colName,
        '투표수': voteCount,
        '투표1이름': _newVote1Con.text,
        '투표수1':0,
        '투표2이름': _newVote2Con.text,
        '투표수2':0,
        '투표3이름': _newVote3Con.text,
        '투표수3':0,
        '투표4이름': _newVote4Con.text,
        '투표수4':0,
      }).then((onValue) {
        //정보 인서트후, 상위페이지로 이동
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 5;
    final double itemWidth = size.width / 5;
    print("*****************************************");
    print(colName);
    print(boardName);
    print(userEmail);
    print("*****************************************");
    List<Widget> _boxContents = [
      IconButton(
          onPressed: () {
            _pickImg();
          },
          icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
              child: Icon(
                CupertinoIcons.camera,
                color: Theme.of(context).colorScheme.primary,
              ))),
      Container(
        width: (MediaQuery.of(context).size.width - 72) / 3,
      ),
      _pickedImgs.length <= 3
          ? Container()
          : FittedBox(
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  shape: BoxShape.circle),
              child: Text(
                '+${(_pickedImgs.length - 3).toString()}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w800),
              ))),
    ];

    //투표 리스트
    List<Widget> _voteContents = [
      Container(
        width: (MediaQuery.of(context).size.width - 60),
        // color: Colors.black.withOpacity(0.05),
        child: Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                hintText: '투표1',
                isCollapsed: true,
              ),
              controller: _newVote1Con,
            ),
            margin: const EdgeInsets.only(left: 5,right:5)),
      ),
      Container(
        width: (MediaQuery.of(context).size.width - 60),
        child: Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                hintText: '투표2',
                isCollapsed: true,
              ),
              controller: _newVote2Con,
            ),
            margin: const EdgeInsets.only(left: 5,right:5)),
      ),
      Column(children: [
        Visibility(
          child: IconButton(
              padding: EdgeInsets.zero, // 패딩 설정
              constraints: BoxConstraints(), // constraints
              onPressed: () {
                voteCount++;
                setState(() {
                  _Votetempvisibility = false;
                });
              },
              icon: Container(

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    color: Colors.white.withOpacity(0.5),),
                  child: Icon(
                    CupertinoIcons.add,
                    color: Theme.of(context).colorScheme.primary,
                  ))),
          visible: _Votetempvisibility,
        ),
        Visibility(
          child: Container(

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  hintText: '투표3',
                  isCollapsed: true,
                ),
                controller: _newVote3Con,
              ),
              margin: const EdgeInsets.only(left: 5,right:5)
          ),
          visible: !_Votetempvisibility,
        ),
      ]),
      Column(children: [
        Visibility(
          child: IconButton(
              padding: EdgeInsets.zero, // 패딩 설정
              constraints: BoxConstraints(), // constraints
              onPressed: () {
                voteCount++;
                setState(() {
                  _Votetemp2visibility = false;
                });
              },
              icon: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    color: Colors.white.withOpacity(0.5),),
                  child: Icon(
                    CupertinoIcons.add,
                    color: Theme.of(context).colorScheme.primary,
                  ))),
          visible: _Votetemp2visibility,
        ),
        Visibility(
          child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  hintText: '투표4',
                  isCollapsed: true,
                ),
                controller: _newVote4Con,
              ),
              margin: const EdgeInsets.only(left: 5,right:5)),
          visible: !_Votetemp2visibility,
        ),
      ]),
    ];

    return Scaffold(
      appBar: AppBar(
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
        leading: IconButton(
          padding: EdgeInsets.zero,
          // 패딩 설정
          constraints: BoxConstraints(),
          // constraints
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.black.withOpacity(0.71),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        actions: [
          Container(
              child: IconButton(
                padding: EdgeInsets.zero,
                // 패딩 설정
                constraints: BoxConstraints(),
                // constraints
                icon: Icon(Icons.done),
                color: Colors.black.withOpacity(0.71),
                onPressed: () async {
                  DateTime now = DateTime.now();
                  int documentCount = await countDocuments();
                  if(_Votevisibility)
                  {createDoc(_newTitleCon.text, _newContentCon.text, documentCount, now, 0,
                      0, 0, "Y", userEmail, _pickedImgs.length, thisID, 0,colName,boardName);
                  _uploadVote();
                  }
                  else if(!_Votevisibility)
                  {createDoc(_newTitleCon.text, _newContentCon.text, documentCount, now, 0,
                      0, 0, "N", userEmail, _pickedImgs.length, thisID, 0,colName,boardName);}
                  _newTitleCon.clear();
                  _newContentCon.clear();
                  _newVote1Con.clear();
                  _newVote2Con.clear();
                  _newVote3Con.clear();
                  _newVote4Con.clear();
                  if(_pickedImgs.length>0)
                  {_uploadImage();}
                  Navigator.pop(context);
                },
              ),
              margin: const EdgeInsets.only(right: 30)),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //제목
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.05),
                  hintText: '제목',
                  isCollapsed: true,
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12)),
              controller: _newTitleCon,
            ),
            // padding: const EdgeInsets.fromLTRB(40,90,0,0),
            margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
          ),
          //내용
          Container(
            child: TextField(
              maxLines: 13,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.black.withOpacity(0.05),
                hintText: '내용을 입력하세요',
                isCollapsed: true,
                contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              ),
              controller: _newContentCon,
            ),
            margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
          ),
          //이미지
          Visibility(
            child: Container(
                child: SizedBox(
                    height: (MediaQuery.of(context).size.width - 72) / 3,
                    child: Row(
                      children: List.generate(
                          3,
                              (index) => DottedBorder(
                              child: Container(
                                width:
                                (MediaQuery.of(context).size.width - 72) /
                                    3,
                                child: Center(child: _boxContents[index]),
                                decoration: index <= _pickedImgs.length - 1
                                    ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(
                                            File(_pickedImgs[index].path))))
                                    : null,
                              ),
                              color: Colors.grey,
                              dashPattern: [5, 3],
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10))).toList(),
                    )),
                margin: const EdgeInsets.only(left: 30, right: 30, top: 10)),
            visible: _Imagevisibility,
          ),

          //투표
          Visibility(
            child: Container(
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width - 60),
                  child: Expanded(
                    child: Column(
                      children: List.generate(
                          4,
                              (index) => DottedBorder(
                              child: Container(
                                height: 30,
                                child: Center(child: _voteContents[index]),
                                decoration: index <= voteCount - 1
                                    ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                )
                                    : null,
                              ),
                              color: Colors.grey,
                              dashPattern: [5, 3],
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10))).toList(),
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(left: 30, right: 30, top: 10)),
            visible: _Votevisibility,
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              icon: Icon(_ImageIcon),
              onPressed: () async {
                _Imagevisibility = !_Imagevisibility;
                setState(() {
                  if (!_Imagevisibility) {
                    _ImageIcon = _ImageAdd;
                    _pickedImgs = [];
                  } else if (_Imagevisibility) {
                    _ImageIcon = _ImageCancel;
                    _pickImg();
                  }
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(_VoteIcon),
              onPressed: () {
                setState(() {
                  _Votevisibility = !_Votevisibility;
                  setState(() {
                    if (!_Votevisibility) {
                      _VoteIcon = _VoteAdd;
                    } else if (_Votevisibility) {
                      _VoteIcon = _VoteCancel;
                      voteCount = 2;
                    }
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}