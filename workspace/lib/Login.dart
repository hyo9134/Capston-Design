
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:hanmodumo/comment.dart';
import 'package:hanmodumo/signup.dart';
import 'package:hanmodumo/home.dart';
import 'package:hanmodumo/validators.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Settings.dart';


class Login extends StatefulWidget {
  Login ({Key? key }) : super(key: key);

  static const routeName = '/login';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String message = '이메일을 보냈습니다. 이메일을 인증해주세요.';

  bool isLoggedIn = false;

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userEmail = prefs.getString('userEmail');
    print(userEmail);
    runApp(MaterialApp(home: userEmail == null ? Login() : Home(userEmail: userEmail),debugShowCheckedModeBanner: false,));
    debugShowCheckedModeBanner: false;
  }

  // static final storage = new FlutterSecureStorage();//flutter_secure_storage 사용을 위한 초기화 작업

  // @override
  // void initState() {
  //   super.initState();
  //   //비동기로 flutter secure storage 정보를 불러오는 작업.
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     _asyncMethod();
  //   });
  // }

  // _asyncMethod() async {
  //   //read 함수를 통하여 key값에 맞는 정보를 불러오게 됩니다. 이때 불러오는 결과의 타입은 String 타입임을 기억해야 합니다.
  //   //(데이터가 없을때는 null을 반환을 합니다.)
  //   userInfo = (await storage.read(key: "login"))!;
  //   print(useremail);


  //user의 정보가 있다면 바로 로그아웃 페이지로 넝어가게 합니다.
  //   if (useremail != null) {
  //     Navigator.pushReplacement(
  //         context,
  //         CupertinoPageRoute(
  //             builder: (context) => Home(userEmail: emailController.text,)));
  //   }
  // }


  @override
  void initState() {

    main();
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
              !isLoggedIn ? TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'eg) johndoe@xxx.com',
                  border: OutlineInputBorder(),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ) :  Text('You are logged in as'),
              // Container(height: 10,),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'eg) very hard key',
                  border: OutlineInputBorder(),
                ),
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 10,),
              SignInButton(
                Buttons.Email,
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString('userEmail', emailController.text);
                  try {
                    setState((){
                      _loading = true;
                    });
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text) .then((value) async {
                      print(value);
                      // await storage.write(
                      //     key: "login",
                      //     value: "id " +
                      //         emailController.text.toString() +
                      //         " " +
                      //         "password " +
                      //         passwordController.text.toString());
                      value.user!.emailVerified == true
                      //이메일 인증 여부
                          ? Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Home(userEmail: emailController.text)))
                          : print('이메일 확인 안댐');
                      setState(() => message = "이메일을 인증해주세요");
                      return value;
                    });
                  }  on FirebaseAuthException catch  (e) {
                    print('Failed with error code: ${e.code}');
                    print(e.message);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('아이디 혹은 비밀번호가 올바르지 않습니다')));
                  } finally {
                    setState((){
                      _loading = false;
                    });
                  }},
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black45, minimumSize: Size(220,38)),

                child: Text('sign up'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>signup()));
                  ;
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text('한모두모')
          , centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,),
        body: _loading ? _buildLoading() : _buildBody()
    );
  }
}
