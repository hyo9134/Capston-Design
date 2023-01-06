import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Gradu_require.dart';
import 'Home.dart';
import 'package:hanmodumo/BoardList_Search.dart';
import 'package:hanmodumo/BoardList_Main.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hanmodumo/Login.dart';

import 'Recruit.dart';
import 'TimeTable.dart';
class Settings extends StatefulWidget {


  final userEmail;

  Settings({
    Key ?key, required this.userEmail,
  }) : super(key: key);

  @override
  _SettingState createState() => _SettingState(userEmail);
}

class _SettingState extends State<Settings> {

  bool isLoggedIn = false;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  static final storage = FlutterSecureStorage();

  final String colName = "userInformation";

  final String major_f = "주전공";
  final String major_f2 = "복수전공";
  final String minor_f = "부전공";

  // final String uid_f = "사용자 고유아이디";
  final String email_f = "이메일";
  final String grade_f = "학년";
  final String scrab_f = "스크랩";
  final String timeTable_f = "시간표";
  final String bookmark_f = "즐겨찾기";
  final String board_f = '게시글';
  late final userEmail;

  _SettingState(this.userEmail);



  @override
  Widget build(BuildContext context) {
    List _pages = [BoardList_Main(userEmail:userEmail),TimeTable(title: "시간표",userEmail: userEmail,), Home(userEmail: userEmail),Recruit(userEmail: userEmail), Settings(userEmail: userEmail), ];

    return Scaffold(
        appBar: AppBar(title: Text('설정', style: TextStyle(color: Colors.white),),
            leading:  IconButton(
                onPressed: () {



                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Home(userEmail: userEmail)));//뒤로가기
                },
                color: Colors.white,
                icon: Icon(Icons.arrow_back)),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 0.0 ),

        // unselectedItemColor: Colors.blue,
        // backgroundColor: Colors.black,

        body: Builder(
            builder: (BuildContext context) {
              return StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection(colName).doc(
                    userEmail).collection('userInfo').where(
                    email_f, isEqualTo: userEmail).snapshots(),
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
                          // Timestamp tt = document["datetime"];
                          // DateTime dt = DateTime.fromMicrosecondsSinceEpoch(
                          //     tt.microsecondsSinceEpoch);
                          return Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                                children: <Widget>[
                                  Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\n"+
                                              userEmail + "님  반갑습니다" + "\n"
                                              "\n"+"\n"+
                                              "주전공 : " + document["주전공"] + "\n"
                                              "복수전공 : " + document["부전공"] + "\n"
                                              "부전공 : " + document["부전공"] + "\n"
                                              "학년 : " + document["학년"],
                                          style: TextStyle(fontSize: 20,
                                              color: Colors.black),),

                                        SizedBox(height: 200,),

                                      ]
                                  ),


                                  Container(
                                    padding:EdgeInsets.only(left:25, right:25, bottom: 30),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                              context,
                                              CupertinoPageRoute(
                                                  builder: (context) => Gradu_require(userEmail: userEmail)),
                                            );
                                          },
                                          child: Text("졸업 요건", style: TextStyle(color: const Color(0xff995689), fontSize: 20)),
                                        ),


                                        OutlinedButton(
                                          onPressed: () async {
                                            //delete 함수를 통하여 key 이름이 login인것을 완전히 폐기 시켜 버린다.
                                            //이를 통하여 다음 로그인시에는 로그인 정보가 없어 정보를 불러 올 수가 없게 된다.
                                            SharedPreferences prefs = await SharedPreferences.getInstance();
                                            prefs.remove('userEmail');
                                            Navigator.pushReplacement(
                                              context,
                                              CupertinoPageRoute(
                                                  builder: (context) => Login()),
                                            );
                                          },
                                          child: Text("로그아웃", style: TextStyle(color: const Color(0xff995689), fontSize: 20)),
                                        )
                                      ],
                                    ),
                                  )



                                ]),
                          );
                        }).toList(),

                      );
                  }
                },
              );
            })
    );
  }

}