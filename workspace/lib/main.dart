import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hanmodumo/BoardList_Search.dart';
import 'package:hanmodumo/BoardView.dart';
import 'package:hanmodumo/Board_Search.dart';
import 'package:hanmodumo/Home.dart';
import 'package:hanmodumo/Login.dart';
import 'package:hanmodumo/SplashScreen.dart';
import 'package:hanmodumo/comment.dart';
import 'LectureList.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'package:hanmodumo/firebase_options.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as html;
import 'package:html/parser.dart' as parser;

// void main(){
//
//   runApp(MyApp());
// }
String? keywords='';
String? noticeLink='';

void main() async{
  HttpOverrides.global = MyHttpOverrides();

  //크롤링
  http.Response response = await http.get(Uri.parse("https://www.hs.ac.kr/kor/4956/subview.do"));
  html.Document document = parser.parse(response.body);
  List<html.Element> keywordElements = document.querySelectorAll('._artclTdTitle>a');
  keywords = crawling(keywordElements);
  noticeLink = crawlingLink(keywordElements);




  //DB연결
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'Hanmodumo',
    options: FirebaseOptions(
        apiKey: "AAAAHNb_6p8:APA91bF5pfyZTK6mQCyBB5a5OUjtIIDRMI8GoDKy_85BvqBsDSfzEN8_C8nZng65raZrxR1TaQxLvTwJ02P6z5vKl3cXi-fuELPCCn9gArFQLxxZeTIppT7UVrFbLbANm__mNXhf9o2D", // Your apiKey
        appId: "123866180255", // Your appId
        messagingSenderId: "123866180255", // Your messagingSenderId
        projectId: "hanmodumo-ddc14",// Your projectId
        storageBucket: 'gs://hanmodumo-ddc14.appspot.com'
    ),);



  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  var userEmail;
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      //home: BoardWrite(),
      // home: BoardView(),
      //home : BoardWrite(),
      //home : Board_Search(),
      home : SplashScreen(),
      //home : Board_Search(),
      //home: board_Free(),
      // home : Home(),
      // home: board_Dormitory(),
      //home: board_Class_main(),
      //home: board_Class_choice(),
      //home:LectureList(),
    );
  }
}

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

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }

}