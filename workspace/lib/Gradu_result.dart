import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';



class MyApp extends StatelessWidget {
  var userEmail;
  var depart;
  var depart2;
  var depart3;
  var depart4;
  var depart5;
  var grade;
  var majorNumControllerResult;
  var minorNumControllerResult;
  var gyoNumControllerResult;
  var illNumControllerResult;
  var biNumControllerResult;
  var bi;
  var chae;
  var jin;
  var gi;
  var su;
  var dae;
  var sa;
  var eng1;
  var eng2;
  var gle;
  var dock;


  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Gradu_result(userEmail: userEmail,
      depart:depart, depart2:depart2,
      depart3: depart3, depart4: depart4, depart5: depart5, grade: grade,
      majorNumControllerResult: majorNumControllerResult, minorNumControllerResult: minorNumControllerResult,
      gyoNumControllerResult: gyoNumControllerResult,illNumControllerResult: illNumControllerResult,
      biNumControllerResult:biNumControllerResult, bi: bi, chae: chae,
      jin: jin, gi: gi, su: su, dae: dae, sa: sa, eng1: eng1, eng2: eng2, gle: gle, dock: dock,


    ),
  );
}

class Gradu_result extends StatefulWidget {

  Gradu_result({
    Key ?key, required this.userEmail,
    required this.depart, required this.depart2,
    required this.depart3, required this.depart4, required this.depart5,
    required this.grade, required this.majorNumControllerResult,
    required this.minorNumControllerResult, required this.gyoNumControllerResult,
    required this.illNumControllerResult, required this.biNumControllerResult,
    required this.bi, required this.chae, required this.jin, required this.gi,
    required this.su, required this.dae, required this.sa, required this.eng1,
    required this.eng2, required this.gle, required this.dock,
  }) : super(key: key);

  final String userEmail;
  final String depart;
  final String depart2;
  final String depart3;
  final String depart4;
  final String depart5;
  final String grade;
  var majorNumControllerResult;
  var minorNumControllerResult;
  var gyoNumControllerResult;
  var illNumControllerResult;
  var biNumControllerResult;
  final String bi;
  final String chae;
  final String jin;
  final String gi;
  final String su;
  final String dae;
  final String sa;
  final String eng1;
  final String eng2;
  final String gle;
  final String dock;

  @override
  State<Gradu_result> createState() => _Gradu_result(userEmail, depart, depart2, depart3,
      depart4,depart5, grade, majorNumControllerResult, minorNumControllerResult,
      gyoNumControllerResult, illNumControllerResult, biNumControllerResult, bi, chae,
      jin, gi,su,dae, sa, eng1, eng2, gle, dock);

}
//???????????? ??????????????? 18?????? ???????????? ??????...
class _Gradu_result extends State<Gradu_result> {


  dynamic userEmail;//?????????
  dynamic depart;//?????????
  dynamic depart2;//????????????
  dynamic depart3;//?????????
  dynamic depart4;//????????????
  dynamic depart5;//??????
  dynamic grade;//????????????
  dynamic majorNumControllerResult;//???????????????
  dynamic minorNumControllerResult;//2??????????????????
  dynamic gyoNumControllerResult;//????????????
  dynamic illNumControllerResult;//????????????
  dynamic biNumControllerResult;//???????????????????????????
  dynamic bi;//????????? ????????????
  dynamic chae;//??????????????????
  dynamic jin;//???????????? ????????????

  dynamic gi;//????????? ?????? ??????
  dynamic su;//??????
  dynamic dae;//?????????
  dynamic sa;//?????????
  dynamic eng1;//??????1
  dynamic eng2;//??????2
  dynamic gle;//?????????
  dynamic dock;//?????????



  dynamic result1=""; //??????????????? ??????/????????? ??????
  dynamic result2="";//2?????? ??????
  dynamic result3="";//?????? ??????
  dynamic result4="";//????????? ??????
  dynamic result5="";//?????? ??????
  dynamic result6="";//??????????????? ??????
  dynamic result7="";//??? ????????? ??????
  dynamic result8=""; //???????????? ??????

  dynamic result11=""; //??????????????? ??????/????????? ??????
  dynamic result22="";//2?????? ??????
  dynamic result33="";//?????? ??????
  dynamic result44="";//????????? ??????
  dynamic result55="";//?????? ??????
  dynamic result66="";//??????????????? ??????
  dynamic result77="";//??? ????????? ??????
  dynamic result88=""; //???????????? ??????
  dynamic rresult=""; //???????????? ??????
  // dynamic finalNum=0;
  // dynamic finalNum1=0;
  // dynamic finalNum2=0;
  // dynamic finalNum3=0;
  // dynamic finalNum4=0;



  _Gradu_result(this.userEmail, this.depart, this.depart2, this.depart3,
      this.depart4, this.depart5, this.grade, this.majorNumControllerResult,
      this.minorNumControllerResult, this.gyoNumControllerResult,
      this.illNumControllerResult, this.biNumControllerResult, this.bi, this.chae,
      this.jin, this. gi, this.su, this.dae, this.sa, this.eng1, this.eng2,
      this.gle, this.dock);

  @override
  Widget build(BuildContext context) {



    void Calculation(dynamic depart, dynamic depart2, dynamic depart3,
        dynamic depart4,dynamic depart5,
        dynamic grade, dynamic majorNumController, dynamic minorNumController,
        dynamic gyoNumController, dynamic illNumController,
        dynamic biNumController, dynamic bi, dynamic chae, dynamic jin, dynamic gi,
        dynamic su, dynamic dae,
        dynamic sa, dynamic eng1, dynamic eng2, dynamic gle, dynamic dock) {
      //if(depart2=="????????????" && depart3=="????????????" && depart4=="????????????" && depart5=="????????????"){
      // if(majorNumControllerResult>)
      //}


      if (depart == "?????????(??????)" || depart == "?????????(??????????????????)") {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

      if (depart == "??????????????????" || depart == "??????????????????") {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 54) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }
      if (depart == "???????????????" || depart == "??????????????????" || depart == "IT???????????????" ||
          depart == "????????????" || depart == "????????????"
          || depart == "?????????????????????????????????(????????????)" || depart == "?????????????????????????????????(???????????????)"
          || depart == "???????????????????????????(????????????)" || depart == "???????????????????????????(??????????????????)" ||
          depart == "????????????"
          || depart == "IT????????????" || depart == "????????????" || depart == "??????????????????" ||
          depart == "??????????????????"
          || depart == "??????????????????")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

      if (depart == "?????????????????????(??????????????????)" || depart == "?????????????????????(??????)" ||
          depart == "?????????????????????(???????????????)"
          || depart == "?????????????????????(???????????????????????????)" || depart == "?????????????????????(???????????????)")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

      if (depart == "?????????????????????" || depart == "???????????????????????????" ||
          depart == "??????????????????(???????????????)"
          || depart == "??????????????????(?????????)" || depart == "??????????????????" ||
          depart == "??????????????????")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 72) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }


      if (depart == "??????????????????" || depart == "????????????" || depart == "??????????????????(????????????)" ||
          depart == "??????????????????(????????????)"
          || depart == "?????????????????????(???????????????)" || depart == "?????????????????????(???????????????)" ||
          depart == "?????????????????????(e-?????????)")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

      if (depart == "??????????????????")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

      if (depart == "????????????")  {
        if (depart2 == "????????????" && depart3 == "????????????" && depart4 == "????????????" &&
            depart5 == "????????????") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "??????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "??????";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //???2????????? ????????????
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "??????"; result2="?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "?????????";
            if (int.parse(gyoNumControllerResult) >= 35) { //????????????
              result3 = "??????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "?????????";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3??????") { //?????????
                result4 = "??????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "?????????";

                if (chae == "8??????") { //??????
                  result5 = "??????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
                else {
                  result5 = "?????????";
                  if (jin == "4??????") { //????????? ??????
                    result6 = "??????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    //7,8??????
                  }
                  else {
                    result6 = "?????????";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                    else {
                      result7 = "?????? ???????????????.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "??????";
                      }
                      else {
                        result8 = "?????????";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d????????? }?????????
      }

    }
    // void Final(){
    //    // int finalNum=int.parse(majorNumControllerResult)+int.parse(minorNumControllerResult);
    //   int finalNum1=int.parse(majorNumControllerResult);
    //   int finalNum2=int.parse(minorNumControllerResult);
    //   if((finalNum1+finalNum2)>=130){
    //     result88="??????";
    //   }
    //   else{result88=" ????????? ??? ?????? 130?????? ????????? ???????????????.";}
    // }

    void FinalResult(){
      if(result1=="??????" && result3=="??????"&& result4=="??????"&& result5=="??????"&& result6=="??????"
          && result7=="??????"&& result8=="??????"){
        rresult="??????";
      }
      else{rresult="??????";}
    }


    Calculation(depart, depart2, depart3, depart4, depart5, grade,
        majorNumControllerResult, minorNumControllerResult, gyoNumControllerResult,
        illNumControllerResult, biNumControllerResult,
        bi, chae, jin, gi, su, dae, sa, eng1, eng2, gle, dock);

    FinalResult();
    // Final();
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Stack(

          children: <Widget>[

            Pinned.fromPins(
              Pin(size: 130.0, middle: 0.5),
              Pin(size: 40.0, start: 32.0),
              child: Text(
                '?????? ?????? ??????',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xff995689),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
            ListView(
              padding: EdgeInsets.all(25),
              children: [
                SizedBox(height: 70,width: 300),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      children: [
                        Row(
                          children: [ Column(
                            children: [

                              Text(''),
                              Text('????????? ?????? : '+majorNumControllerResult+' (???)??? '+result1 + '   '+result11),
                              //Text('??? 2?????? ?????? : '+minorNumControllerResult+' (???)??? '+result2 ),
                              Text('?????? ?????? : '+gyoNumControllerResult+' (???)??? '+result3),
                              Text('????????? : '+biNumControllerResult+'??? ?????? ???????????? '+bi+'(???)??? '+result4),
                              Text('????????? ???????????? '+chae+'(???)??? '+result5),
                              Text('????????? ?????? ??? ???????????? '+jin+'(???)??? '+result6),
                              Text('??????????????? '+grade+'(???)??? '+result8),
                              //Text(''+result88),
                              Text('?????? ?????? ???????????? ?????? ??????'+result7),

                              Text(''),
                              Text('?????? ?????? : ?????? '+rresult),



                              // Text(depart2),
                              // Text(depart3),
                              // Text(depart4),
                              // Text(depart5),
                              // Text(grade),
                              // Text(majorNumControllerResult),
                              // Text(minorNumControllerResult),
                              // Text(gyoNumControllerResult),
                              // Text(illNumControllerResult),
                              // Text(biNumControllerResult),
                              // Text(bi),
                              // Text(chae),
                              // Text(jin),
                              // Text(gi),
                              // Text(su),
                              // Text(dae),
                              // Text(sa),
                              // Text(eng1),
                              // Text(eng2),
                              // Text(gle),
                              // Text(dock),
                            ],
                          )


                          ],

                        ),

                      ],
                    ),

                    // Text(userEmail.toString().split('@').first+'??? ???????????????'),
                  ],
                ),
                //????????????



              ],
            ),
          ],));
  }

}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fr6je3 =
    '<svg viewBox="27.0 357.0 374.0 1.0" ><path transform="translate(27.0, 357.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';