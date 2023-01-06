import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:hanmodumo/Login.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hanmodumo/Provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  signup ({Key? key}) : super(key: key);
  static const routeName = '/login';


  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<signup> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final String colName = "userInformation";
  final int accuse = 0;
  final uid=   FirebaseAuth.instance.currentUser?.uid;


  final String major_f = "주전공";
  final String major_f2 = "복수전공";
  final String minor_f = "부전공";
  // final String uid_f = "사용자 고유아이디";
  final String email_f = "이메일";
  final String grade_f = "학년";
  final String scrap_b = "게시글번호";
  final String scrap_c = "컬랙션명";
  final String timeTable_f = "시간표";
  final String bookmark_b = "학과별 즐겨찾기";
  final String bookmark_l = "강의별 즐겨찾기";
  final String board_f = '게시글';
  final String comment_f = '댓글';
  final String comment_N = '댓글 번호';
  final String recomment_f = '대댓글';
  final String chat_f = '쪽지';
  final String accuse_f = '신고';


  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController majorController = TextEditingController();
  final TextEditingController majorController2 = TextEditingController();
  final TextEditingController minorController = TextEditingController();
  final TextEditingController gradeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _message = '이메일이을 보냈습니다. 이메일을 인증해주세요.';

  // 문서 생성 (Create)
  void createDoc(String major, String major2, String minor, String email, String grade) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('userInfo').add({

      major_f: major,
      major_f2: major2,
      minor_f: minor,
      // uid_f: uid,
      // date_created: Timestamp.now(),
      email_f: email,
      grade_f: grade,
    });
  }

  void createDoc2(String timeTable) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('timeTable').add({

      timeTable_f: timeTable,
    });
  }

  void createDoc3(String scrapn, int scrapc) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('scrap').add({

      scrap_b: scrapn,
      scrap_c: scrapc
    });
  }

  void createDoc4(String bookmark_board) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('bookmark').add({

      bookmark_b: bookmark_board,
    });
  }

  void createDoc5(String bookmark_lecture) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('bookmark').add({

      bookmark_l: bookmark_lecture,
    });
  }
  // void createDoc3(String scrapn, int scrapc) {
  //   FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('scrap').add({
  //
  //     scrap_b: scrapn,
  //     scrap_c: scrapc
  //   });
  // }

  // void createDoc4(String bookmark_board) {
  //   FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('bookmark').add({
  //
  //     bookmark_b: bookmark_board,
  //   });
  // }

  // void createDoc5(String bookmark_lecture) {
  //   FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('bookmark').add({
  //
  //     bookmark_l: bookmark_lecture,
  //   });
  // }

  void createDoc6(String board) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('board').add({

      board_f: board,
    });
  }

  void createDoc7(String comment, int commentNumber) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('comment').add({

      comment_f: comment,
      comment_N: commentNumber
    });
  }

  void createDoc8(String recomment) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('comment').add({

      recomment_f : recomment,
    });
  }

  void createDoc9(String chat) {
    FirebaseFirestore.instance.collection(colName).doc(emailController.text).collection('comment').add({

      chat_f : chat,
    });
  }




  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


  _buildLoading() {
    return Center(child: CircularProgressIndicator(),);
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: '전공',
                  hintText: 'ex) 컴퓨터공학부',
                  border: OutlineInputBorder(),
                ),
                controller: majorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter some text';
                  }
                },
              ),
              // Container(height: 10,),
              SizedBox(width: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '복수전공',
                  hintText: 'ex) 컴퓨터공학부',
                  border: OutlineInputBorder(),
                ),
                controller: majorController2,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter some text';
                  }
                },
              ),
              SizedBox(width: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '부전공',
                  hintText: 'ex) 컴퓨터공학부',
                  border: OutlineInputBorder(),
                ),
                controller: minorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter some text';
                  }
                },
              ),
              SizedBox(width: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'grade',
                  hintText: 'ex) 1학년',
                  border: OutlineInputBorder(),
                ),
                controller: gradeController,
                validator:  (value) {
                  if(value == null || value.isEmpty)
                  {
                    return 'please enter a valid grade';
                  }
                  return null;
                },
              ),
              // Container(height: 10,),
              SizedBox(width: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'ex) johndoe@hs.ac.kr',
                  border: OutlineInputBorder(),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator:  (value) {
                  if(value == null || !value.characters.contains("@hs.ac.kr"))
                  {
                    return 'please enter a valid email';
                  }
                  return null;
                },
              ),
              // Container(height: 10,),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'ex) very hard key',
                  border: OutlineInputBorder(),
                ),
                controller: passwordController,
                obscureText: true,
                validator:  (value) {
                  if(value == null || value.length<4)
                  {
                    return 'please enter 4 more char';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              SignInButtonBuilder(
                text: 'Sign up with Email',
                icon: Icons.email,
                backgroundColor: Colors.blue,
                onPressed: () async {
                  try {
                    //입력받은 이메일과 비밀번호 파이어베이스에 등록
                    if(emailController.text.endsWith("@hs.ac.kr")){
                      final UserCredential result = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email: emailController.text, password: passwordController.text);
                      FirebaseAuth.instance.currentUser?.sendEmailVerification(); //메일 보내기
                      flutterToast();
                      final User? user = result.user;
                      _message='가입한 계정으로 로그인해주세요';   //가입되었으면 다시 로그인페이지로 와서 스낵바띄워줌
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login())
                      );
                    }
                    else
                      _message='학교 이메일을 입력하세요';    //만약 학교이메일이 아니라 다른 이메일이면 다시 입력하게 함

                    setState(() => _loading = true);
                    // final r = await FirebaseAuth.instance
                    //     .createUserWithEmailAndPassword(
                    //     email: emailController.text,
                    //     password: passwordController.text
                    // );

                    // await r.user?.reload();
                    // await r.user?.sendEmailVerification();
                    createDoc(majorController.text, majorController.text, minorController.text, emailController.text,gradeController.text);
                    createDoc2('');
                   // createDoc3('', 0);
                   // createDoc4('');
                    //createDoc5('');
                    createDoc6('');
                    createDoc7('', 0);
                    createDoc8('');
                    createDoc9('');
                    setState(() => _loading = false);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  } catch (e) {
                    Fluttertoast.showToast(
                        msg: "회원가입되었습니다",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    print(e);
                  }

                },
              ),
              // Text('or'),
              // SignInButton(
              //   Buttons.Google,
              //   onPressed: () async {
              //     setState(() => _loading = true);
              //     await signInWithGoogle();
              //     setState(() => _loading = false);
              //     // Navigator.pushReplacementNamed(context, '/');
              //     // Navigator.pushReplacementNamed(context, '/auth');
              //     Navigator.pushReplacementNamed(context, '/home');
              //   },
              // ),
              // SizedBox(height: 20,),
              // Text("Don't have an account yet?"),
              // TextButton(
              //   child: Text('Sign up'),
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/signup');
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text('한모두모'),centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent, ),
        body: _loading ? _buildLoading() : _buildBody()
    );
  }
}


void flutterToast(){
  Fluttertoast.showToast(msg: '회원가입되셨습니다. 이메일 인증 확인을 해주세요',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT
  );
}
