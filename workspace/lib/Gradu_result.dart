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
//과구분은 어쩔수없이 18학번 이후로만 가능...
class _Gradu_result extends State<Gradu_result> {


  dynamic userEmail;//이메일
  dynamic depart;//주전공
  dynamic depart2;//복수전공
  dynamic depart3;//부전공
  dynamic depart4;//마이크로
  dynamic depart5;//연계
  dynamic grade;//이수학기
  dynamic majorNumControllerResult;//주전공학점
  dynamic minorNumControllerResult;//2번째전공학점
  dynamic gyoNumControllerResult;//교양학점
  dynamic illNumControllerResult;//일선학점
  dynamic biNumControllerResult;//비교과마일리지학점
  dynamic bi;//비교과 이수학기
  dynamic chae;//채플이수학기
  dynamic jin;//진로상담 이수학기

  dynamic gi;//기독교 수강 여부
  dynamic su;//성서
  dynamic dae;//대생길
  dynamic sa;//사생길
  dynamic eng1;//영어1
  dynamic eng2;//영어2
  dynamic gle;//글쓰기
  dynamic dock;//독서서



  dynamic result1=""; //주전공학점 합격/불합격 결과
  dynamic result2="";//2전공 결과
  dynamic result3="";//교양 결과
  dynamic result4="";//비교과 결과
  dynamic result5="";//채플 결과
  dynamic result6="";//진로와상담 결과
  dynamic result7="";//네 아니요 결과
  dynamic result8=""; //이수학기 결과

  dynamic result11=""; //주전공학점 합격/불합격 결과
  dynamic result22="";//2전공 결과
  dynamic result33="";//교양 결과
  dynamic result44="";//비교과 결과
  dynamic result55="";//채플 결과
  dynamic result66="";//진로와상담 결과
  dynamic result77="";//네 아니요 결과
  dynamic result88=""; //이수학기 결과
  dynamic rresult=""; //이수학기 결과
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
      //if(depart2=="해당없음" && depart3=="해당없음" && depart4=="해당없음" && depart5=="해당없음"){
      // if(majorNumControllerResult>)
      //}


      if (depart == "신학부(신학)" || depart == "신학부(기독교교육학)") {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

      if (depart == "국어국문학과" || depart == "영어영문학과") {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 54) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }
      if (depart == "한국사학과" || depart == "문예창작학과" || depart == "IT콘텐츠학과" ||
          depart == "경제학과" || depart == "사회학과"
          || depart == "미디어영상광고홍보학부(광고홍보)" || depart == "미디어영상광고홍보학부(미디어영상)"
          || depart == "글로벌비즈니스학부(국제경영)" || depart == "글로벌비즈니스학부(국제개발협력)" ||
          depart == "경영학과"
          || depart == "IT경영학과" || depart == "중국학과" || depart == "국제경제학과" ||
          depart == "수리금융학과"
          || depart == "응용통계학과")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

      if (depart == "인문콘텐츠학부(독어독문화학)" || depart == "인문콘텐츠학부(철학)" ||
          depart == "인문콘텐츠학부(종교문화학)"
          || depart == "인문콘텐츠학부(디지털문화콘텐츠학)" || depart == "인문콘텐츠학부(영상문화학)")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

      if (depart == "중국어문화학과" || depart == "한중문화콘텐츠학과" ||
          depart == "국제관계학부(국제관계학)"
          || depart == "국제관계학부(정치학)" || depart == "컴퓨터공학부" ||
          depart == "정보통신학부")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 72) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }


      if (depart == "사회복지학과" || depart == "재활학과" || depart == "심리아동학부(아동보육)" ||
          depart == "심리아동학부(임상심리)"
          || depart == "아노덴인재학부(상담복지학)" || depart == "아노덴인재학부(상담심리학)" ||
          depart == "아노덴인재학부(e-경영학)")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

      if (depart == "특수체육학과")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

      if (depart == "일본학과")  {
        if (depart2 == "해당없음" && depart3 == "해당없음" && depart4 == "해당없음" &&
            depart5 == "해당없음") {
          if (int.parse(majorNumControllerResult) >= 65) {
            result1 = "합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "합격";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //제2전공이 있는경우
        else {
          if (int.parse(majorNumControllerResult) >= 36 && int.parse(minorNumControllerResult)>=36) {
            result1 = "합격"; result2="불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            result1 = "불합격";
            if (int.parse(gyoNumControllerResult) >= 35) { //교양학점
              result3 = "합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (
                      grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
            else {
              result3 = "불합격";
              if (int.parse(biNumControllerResult) >= 300 || bi == "3이상") { //비교과
                result4 = "합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
              else {
                result4 = "불합격";

                if (chae == "8이상") { //채플
                  result5 = "합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
                else {
                  result5 = "불합격";
                  if (jin == "4이상") { //진로와 상담
                    result6 = "합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    //7,8완성
                  }
                  else {
                    result6 = "불합격";
                    if (gi == "Y" && su == "Y" && dae == "Y" && sa == "Y" &&
                        eng1 == "Y" && eng2 == "Y" && gle == "Y" &&
                        dock == "Y") {
                      result7 = "했습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                    else {
                      result7 = "하지 않았습니다.";
                      if (grade == "4-1" ||
                          grade == "4-2" ||
                          grade == "5-1" ||
                          grade == "5-2" ||
                          grade == "6-1" ||
                          grade == "6-2") {
                        result8 = "합격";
                      }
                      else {
                        result8 = "불합격";
                      }
                    }
                  }
                }
              }
            }
          }
        }
        //d여기서 }삭제함
      }

    }
    // void Final(){
    //    // int finalNum=int.parse(majorNumControllerResult)+int.parse(minorNumControllerResult);
    //   int finalNum1=int.parse(majorNumControllerResult);
    //   int finalNum2=int.parse(minorNumControllerResult);
    //   if((finalNum1+finalNum2)>=130){
    //     result88="합격";
    //   }
    //   else{result88=" 하지만 총 학점 130점을 모으지 못했습니다.";}
    // }

    void FinalResult(){
      if(result1=="합격" && result3=="합격"&& result4=="합격"&& result5=="합격"&& result6=="합격"
          && result7=="합격"&& result8=="합격"){
        rresult="합격";
      }
      else{rresult="불가";}
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
                '졸업 요건 확인',
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
                              Text('주전공 학점 : '+majorNumControllerResult+' (으)로 '+result1 + '   '+result11),
                              //Text('제 2전공 학점 : '+minorNumControllerResult+' (으)로 '+result2 ),
                              Text('교양 학점 : '+gyoNumControllerResult+' (으)로 '+result3),
                              Text('비교과 : '+biNumControllerResult+'점 또는 이수학기 '+bi+'(으)로 '+result4),
                              Text('채플은 이수학기 '+chae+'(으)로 '+result5),
                              Text('진로와 상담 은 이수학기 '+jin+'(으)로 '+result6),
                              Text('이수학기는 '+grade+'(으)로 '+result8),
                              //Text(''+result88),
                              Text('교양 필수 과목들은 전부 이수'+result7),

                              Text(''),
                              Text('최종 결과 : 졸업 '+rresult),



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

                    // Text(userEmail.toString().split('@').first+'님 안녕하세요'),
                  ],
                ),
                //한덩어리



              ],
            ),
          ],));
  }

}

const String _svg_ei84yz =
    '<svg viewBox="27.0 106.0 374.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fr6je3 =
    '<svg viewBox="27.0 357.0 374.0 1.0" ><path transform="translate(27.0, 357.0)" d="M 0 0 L 374 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';