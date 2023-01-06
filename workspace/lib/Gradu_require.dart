import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:hanmodumo/Settings.dart';
import 'Board_Search_1.dart';
import 'Gradu_result.dart';
import 'TimeTable.dart';


//졸업요건 입력하는 페이지(설정에서 졸업요건 버튼 누르면 이동하는 화면)






enum Gi {Y, N}
enum Su {Y, N}
enum Dae {Y, N}
enum Sa {Y, N}
enum Eng1 {Y, N}
enum Eng2 {Y, N}
enum Gle {Y, N}
enum Dock {Y, N}

class MyApp extends StatelessWidget {
  // var userEmail;


  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    // home: Gradu_require(userEmail: userEmail,),
  );
}

class Gradu_require extends StatefulWidget {
  var userEmail;



  Gradu_require({
    Key ?key, required this.userEmail,
  }) : super(key: key);

  @override
  State<Gradu_require> createState() => _Gradu_require(userEmail);

}
//과구분은 어쩔수없이 18학번 이후로만 가능...
class _Gradu_require extends State<Gradu_require> {


  Gi _gi =Gi.N;
  Su _su =Su.N;
  Dae _dae =Dae.N;
  Sa _sa =Sa.N;
  Eng1 _eng1 =Eng1.N;
  Eng2 _eng2 =Eng2.N;
  Gle _gle =Gle.N;
  Dock _dock =Dock.N;


  //주전공
  final depart = ["신학부(신학)", "신학부(기독교교육학)", "국어국문학과", "영어영문학과", "한국사학과", "문예창작학과", "인문콘텐츠학부(독어독문화학)","인문콘텐츠학부(철학)",
    "인문콘텐츠학부(종교문화학)","인문콘텐츠학부(디지털문화콘텐츠학)", "인문콘텐츠학부(영상문화학)", "중국어문화학과", "한중문화콘텐츠학과", "IT콘텐츠학과", "국제관계학부(국제관계학)",
    "국제관계학부(정치학)", "경제학과", "사회학과", "미디어영상광고홍보학부(광고홍보)", "미디어영상광고홍보학부(미디어영상)", "사회복지학과", "재활학과", "특수체육학과", "심리아동학부(아동보육)",
    "심리아동학부(임상심리)", "글로벌비즈니스학부(국제경영)", "글로벌비즈니스학부(국제개발협력)", "경영학과", "IT경영학과", "중국학과", "일본학과", "국제경제학과", "수리금융학과",
    "응용통계학과", "컴퓨터공학부", "정보통신학부", "아노덴인재학부(상담복지학)", "아노덴인재학부(상담심리학)", "아노덴인재학부(e-경영학)"];
  var _depart = "컴퓨터공학부";

  //복수전공
  final depart2 = ["해당없음","신학부(신학)", "신학부(기독교교육학)", "국어국문학과", "영어영문학과", "한국사학과", "문예창작학과", "인문콘텐츠학부(독어독문화학)","인문콘텐츠학부(철학)",
    "인문콘텐츠학부(종교문화학)","인문콘텐츠학부(디지털문화콘텐츠학)", "인문콘텐츠학부(영상문화학)", "중국어문화학과", "한중문화콘텐츠학과", "IT콘텐츠학과", "국제관계학부(국제관계학)",
    "국제관계학부(정치학)", "경제학과", "사회학과", "미디어영상광고홍보학부(광고홍보)", "미디어영상광고홍보학부(미디어영상)", "사회복지학과", "재활학과", "특수체육학과", "심리아동학부(아동보육)",
    "심리아동학부(임상심리)", "글로벌비즈니스학부(국제경영)", "글로벌비즈니스학부(국제개발협력)", "경영학과", "IT경영학과", "중국학과", "일본학과", "국제경제학과", "수리금융학과",
    "응용통계학과", "컴퓨터공학부", "정보통신학부", "아노덴인재학부(상담복지학)", "아노덴인재학부(상담심리학)", "아노덴인재학부(e-경영학)"];
  var _depart2 = "해당없음";

  //부전공
  final depart3 = ["해당없음","신학부(신학)", "신학부(기독교교육학)", "국어국문학과", "영어영문학과", "한국사학과", "문예창작학과", "인문콘텐츠학부(독어독문화학)","인문콘텐츠학부(철학)",
    "인문콘텐츠학부(종교문화학)","인문콘텐츠학부(디지털문화콘텐츠학)", "인문콘텐츠학부(영상문화학)", "중국어문화학과", "한중문화콘텐츠학과", "IT콘텐츠학과", "국제관계학부(국제관계학)",
    "국제관계학부(정치학)", "경제학과", "사회학과", "미디어영상광고홍보학부(광고홍보)", "미디어영상광고홍보학부(미디어영상)", "사회복지학과", "재활학과", "특수체육학과", "심리아동학부(아동보육)",
    "심리아동학부(임상심리)", "글로벌비즈니스학부(국제경영)", "글로벌비즈니스학부(국제개발협력)", "경영학과", "IT경영학과", "중국학과", "일본학과", "국제경제학과", "수리금융학과",
    "응용통계학과", "컴퓨터공학부", "정보통신학부", "아노덴인재학부(상담복지학)", "아노덴인재학부(상담심리학)", "아노덴인재학부(e-경영학)"];
  var _depart3 = "해당없음";


  //마이크로전공
  final depart4 = ["해당없음", "IT관광콘텐츠디자인", "글로컬문화비즈니스기획", "인공지능과미래경제", "빅데이터분석", "국제개발협력과 평화", "데이터기반 행정", "자율사물과 활용", "창업과 영상제작"];
  var _depart4 = "해당없음";


  //연계전공
  final depart5 = ["해당없음","동북아국제통상학", "마케팅사회조사학", "평생교육학", "평생교육학-HRD","사회적경제경영"];
  dynamic _depart5 = "해당없음";


  //이수학기
  final grade = ["1-1", "1-2","2-1", "2-2","3-1", "3-2","4-1", "4-2","5-1", "5-2","6-1", "6-2"];
  dynamic _grade = "1-1";

  final chae=["0","1","2","3","4","5","7", "8이상"];
  dynamic _chae="0";


  final jin=["0","1","2","3","4이상"];
  dynamic _jin="0";

  final bi=["0","1","2","3이상"];
  dynamic _bi="0";

  var isCheckBox=false;
  //Depart2 _depart2=Depart2.double;



  //텍스트필드 컨트롤러들
  final TextEditingController majorNumController = TextEditingController();
  final TextEditingController minorNumController = TextEditingController();
  final TextEditingController gyoNumController = TextEditingController();
  final TextEditingController illNumController = TextEditingController();
  final TextEditingController biNumController = TextEditingController();







  var userEmail;

  _Gradu_require(this.userEmail,);


  @override
  Widget build(BuildContext context) {
    //크기
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: Text(
            '졸업 요건 TEST',
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
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings(userEmail: userEmail))
              );
            },
          ),
          backgroundColor: Colors.white30,
          elevation: 0,
        ),

        body: Stack(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.all(25),
              children: [
                SizedBox(
                  width: deviceWidth-40,
                  height: deviceheight-677,
                  // height: 70,
                  // width: 200
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("주전공"),
                    DropdownButton(
                      alignment: Alignment.bottomRight,
                      dropdownColor: Colors.white70,  //색 스타일 지정
                      value: _depart,  //체크박스에 들어갈 값이 담긴 변수
                      items: depart.map((newValue) {
                        return DropdownMenuItem(
                          value: newValue.toString(),
                          child: Text(newValue.toString()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _depart = value as String;
                        });
                      },
                    ),
                  ],
                ),


                //한덩어리
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("복수전공"),
                        DropdownButton(
                          alignment: Alignment.bottomRight,
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _depart2,  //체크박스에 들어갈 값이 담긴 변수
                          items: depart2.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _depart2 = value as String;
                            });
                          },
                        ),
                      ],

                    ),

                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("부전공"),
                        DropdownButton(
                          alignment: Alignment.bottomRight,
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _depart3,  //체크박스에 들어갈 값이 담긴 변수
                          items: depart3.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _depart3 = value as String;
                            });
                          },
                        ),
                      ],

                    ),

                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("마이크로전공"),

                        DropdownButton(
                          alignment: Alignment.bottomRight,
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _depart4,  //체크박스에 들어갈 값이 담긴 변수
                          items: depart4.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _depart4 = value as String;
                            });
                          },
                        ),
                      ],

                    ),

                  ],
                ),


                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("연계전공"),
                        DropdownButton(
                          alignment: Alignment.bottomRight,
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _depart5,  //체크박스에 들어갈 값이 담긴 변수
                          items: depart5.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _depart5 = value as String;
                            });
                          },
                        ),
                      ],

                    ),

                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("이수 학기"),
                        DropdownButton(
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _grade,  //체크박스에 들어갈 값이 담긴 변수
                          items: grade.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _grade = value as String;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("주전공 학점"),
                        Container(width:80, child: TextFormField(keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: majorNumController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter some text';
                            }
                          },
                        ),
                        ),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("복수/부/마이크로/연계 전공 학점"),
                        Container(width:80, child: TextFormField(keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: minorNumController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter some text';
                            }
                          },
                        ),),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("교양 학점(교필/교선 포함)"),
                        Container(width:80, child: TextFormField(keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: gyoNumController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter some text';
                            }
                          },
                        ),),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("일반선택 학점"),
                        Container(width:80, child: TextFormField(keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: illNumController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter some text';
                            }
                          },
                        ),),
                      ],
                    ),
                  ],
                ),




                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("비교과 마일리지"),
                        Container(width:80, child: TextFormField(keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: biNumController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter some text';
                            }
                          },
                        ),),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("비교과 이수 학기"),
                        DropdownButton(
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _bi,  //체크박스에 들어갈 값이 담긴 변수
                          items: bi.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _bi = value as String;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("채플 이수 학기"),
                        DropdownButton(
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _chae,  //체크박스에 들어갈 값이 담긴 변수
                          items: chae.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _chae = value as String;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("진로와상담 이수 학기"),
                        DropdownButton(
                          dropdownColor: Colors.white70,  //색 스타일 지정
                          value: _jin,  //체크박스에 들어갈 값이 담긴 변수
                          items: jin.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue.toString(),
                              child: Text(newValue.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _jin = value as String;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),




                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("기독교 과목 이수"),
                        SizedBox(width: 100,),
                        Radio(
                            value: Gi.Y,
                            groupValue: _gi,
                            onChanged: (value) {
                              setState(() {
                                _gi = Gi.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Gi.N,
                          groupValue: _gi,
                          onChanged: (value) {
                            setState(() {
                              _gi = Gi.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("성서 과목 이수"),
                        SizedBox(width: 110,),
                        Radio(
                            value: Su.Y,
                            groupValue: _su,
                            onChanged: (value) {
                              setState(() {
                                _su = Su.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Su.N,
                          groupValue: _su,
                          onChanged: (value) {
                            setState(() {
                              _su = Su.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("대학생활길잡이 이수"),
                        SizedBox(width: 60,),
                        Radio(
                            value: Dae.Y,
                            groupValue: _dae,
                            onChanged: (value) {
                              setState(() {
                                _dae = Dae.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Dae.N,
                          groupValue: _dae,
                          onChanged: (value) {
                            setState(() {
                              _dae = Dae.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("사회생활길잡이 이수"),
                        SizedBox(width: 60,),
                        Radio(
                            value: Sa.Y,
                            groupValue: _sa,
                            onChanged: (value) {
                              setState(() {
                                _sa = Sa.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Sa.N,
                          groupValue: _sa,
                          onChanged: (value) {
                            setState(() {
                              _sa = Sa.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),



                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("영어1 이수"),
                        SizedBox(width: 115,),
                        Radio(
                            value: Eng1.Y,
                            groupValue: _eng1,
                            onChanged: (value) {
                              setState(() {
                                _eng1 = Eng1.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Eng1.N,
                          groupValue: _eng1,
                          onChanged: (value) {
                            setState(() {
                              _eng1 = Eng1.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("영어2 이수"),
                        SizedBox(width:115,),
                        Radio(
                            value: Eng2.Y,
                            groupValue: _eng2,
                            onChanged: (value) {
                              setState(() {
                                _eng2 = Eng2.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Eng2.N,
                          groupValue: _eng2,
                          onChanged: (value) {
                            setState(() {
                              _eng2 = Eng2.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("글쓰기의기초/SW 교과목 이수"),
                        SizedBox(width:30,),
                        Radio(
                            value: Gle.Y,
                            groupValue: _gle,
                            onChanged: (value) {
                              setState(() {
                                _gle = Gle.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Gle.N,
                          groupValue: _gle,
                          onChanged: (value) {
                            setState(() {
                              _gle = Gle.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),



                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("독서와토론 이수"),
                        SizedBox(width:115,),
                        Radio(
                            value:Dock.Y,
                            groupValue: _dock,
                            onChanged: (value) {
                              setState(() {
                                _dock = Dock.Y;
                              });
                            }
                        ),
                        Text('네'),
                        Radio(
                          value: Dock.N,
                          groupValue: _dock,
                          onChanged: (value) {
                            setState(() {
                              _dock = Dock.N;
                            });
                          },),
                        Text('아니요'),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    // Text(_depart),
                    // Text(_depart2),
                    // Text(_depart3),
                    // Text(_depart4),
                    // Text(_depart5),
                    // Text(_grade),
                    // Text(majorNumController.text),
                    //  Text(minorNumController.text),
                    // Text(gyoNumController.text),
                    // Text(illNumController.text),
                    // Text(biNumController.text),
                    //  Text(_bi),
                    //  Text(_chae),
                    // Text(_jin),
                    // Text(_gi.toString().split('.').last),
                    // Text(_su.toString().split('.').last),
                    //  Text(_dae.toString().split('.').last),
                    // Text(_sa.toString().split('.').last),
                    // Text(_eng1.toString().split('.').last),
                    // Text(_eng2.toString().split('.').last),
                    // Text(_gle.toString().split('.').last),
                    // Text(_dock.toString().split('.').last),
                    //
                    //위에꺼 테스트 출력란

                    SizedBox(height: 30,),
                    OutlinedButton(onPressed: (){
                      String message = '';

                      if (majorNumController.text.isEmpty){
                        message = '주전공 학점을 입력해주세요.';
                      }
                      else if (_depart2=="해당없음" && _depart3=="해당없음" &&
                          _depart4=="해당없음" && _depart5=="해당없음" && minorNumController.text.isNotEmpty) {
                        message = '복수/부/마이크로/연계 전공을 선택하거나 학점란을 지워주세요.';
                      }
                      else if (_depart2!="해당없음" && minorNumController.text.isEmpty){
                        message = '복수전공 학점을 입력해주세요.';
                      }
                      else if(_depart3!="해당없음" && minorNumController.text.isEmpty){
                        message = '부전공 학점을 입력해주세요.';}

                      else if(_depart4!="해당없음" && minorNumController.text.isEmpty){
                        message = '마이크로전공 학점을 입력해주세요.';}
                      else if(_depart5!="해당없음" && minorNumController.text.isEmpty){
                        message = '연계전공 학점을 입력해주세요.';}

                      else if (gyoNumController.text.isEmpty){
                        message = '교양 학점을 입력해주세요.';}

                      else if (biNumController.text.isEmpty){
                        message = '비교과 마일리지를 입력해주세요.'; }
                      else{

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=>Gradu_result(
                                depart:_depart, depart2:_depart2,depart3:_depart3,depart4:_depart4,depart5:_depart5,
                                grade:_grade,
                                majorNumControllerResult:majorNumController.text,
                                minorNumControllerResult:minorNumController.text,
                                gyoNumControllerResult:gyoNumController.text,
                                illNumControllerResult:illNumController.text,
                                biNumControllerResult:biNumController.text,
                                bi:_bi,chae:_chae,jin:_jin,
                                gi:_gi.toString().split('.').last,
                                su:_su.toString().split('.').last,dae:_dae.toString().split('.').last,
                                sa:_sa.toString().split('.').last, eng1:_eng1.toString().split('.').last,
                                eng2:_eng2.toString().split('.').last,gle:_gle.toString().split('.').last,
                                dock:_dock.toString().split('.').last,
                                userEmail:userEmail)));
                        message = '위의 결과는 참고용입니다. 졸업여부 관련 최종 책임은 본인에게 있습니다.';};

                      ScaffoldMessenger.of(context).showSnackBar( //스낵바 색과 메시지
                        SnackBar(content: Text(message),backgroundColor: Colors.deepOrange,
                        ),);
                    }, child:Text("제출"),),
                  ],

                )
              ],
            ),
          ],));
  }
}

// void Calculation(String depart, String depart2, String depart3, String depart4,String depart5,
// String grade, int majorNumController, int minorNumController, int gyoNumController, int illNumController,
// int biNumController, String bi, String chae, String jin, String gi, String su, String dae,
// String sa, String eng1, String eng2, String gle, String dock ) {
//   if(depart2=="해당없음" && depart3=="해당없음" && depart4=="해당없음" && depart5=="해당없음"){
//     var hakNum="통과";
//   }
//   if(depart2!="해당없음" && depart3=="해당없음" && depart4=="해당없음" && depart5=="해당없음"){
//     if(minorNumController>=36 && majorNumController>=70){
//       var hakNum="통과";
//     }
//   }
//   if(depart2=="해당없음" && depart3=="해당없음" && depart4=="해당없음" && depart5=="해당없음"){
//     var hakNum="통과";
//   }
//
// }