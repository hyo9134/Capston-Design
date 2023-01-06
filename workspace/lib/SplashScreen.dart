import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// import 'package:hanmodumo/Home.dart';
// import 'package:hanmodumo/validators.dart';

import 'Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()))
        //_checkUser(context)
        );
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/images/logo.jpg'), fit: BoxFit.contain),
      // ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: deviceWidth,
              height: deviceHeight,
              child: Center(
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                //     Container(
                //       child: Image.asset('assets/images/dubu5.png', width:100),
                // ),
                    // Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children:const [
                    //       Text(
                    //         '    ',
                    //         style: TextStyle(height: 1.2,fontSize: 35, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                    //         overflow: TextOverflow.ellipsis,
                    //
                    //       ),
                    //       Text(
                    //         '야',
                    //         style: TextStyle(height: 1.2,fontSize: 35),
                    //         overflow: TextOverflow.ellipsis,
                    //       ),
                    //       Text(
                    //         '      ',
                    //         style: TextStyle(height: 1.2,fontSize: 35, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                    //         overflow: TextOverflow.ellipsis,
                    //       ),
                    //       Text(
                    //         '.',
                    //         style: TextStyle(height: 1.2,fontSize: 35),
                    //         overflow: TextOverflow.ellipsis,
                    //       ),
                    //
                    //     ]
                    //
                    // ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            '한',
                            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                            overflow: TextOverflow.ellipsis,

                          ),
                          Text(
                            '모',
                            style: TextStyle(fontSize: 35),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '두',
                            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '모',
                            style: TextStyle(fontSize: 35),
                            overflow: TextOverflow.ellipsis,
                          ),

                        ]

                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            '한',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                            overflow: TextOverflow.ellipsis,

                          ),
                          Text(
                            '신대 ',
                            style: TextStyle(fontSize: 17),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '모두모',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700,color: const Color(0xff995689),),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '여!',
                            style: TextStyle(fontSize: 17),
                            overflow: TextOverflow.ellipsis,
                          ),

                        ]

                    ),
                  ]
                ),

              )
            )
          ]),
      // Positioned(
      //   top: 0.0,
      //   left: 0.0,
      //   child: Container(
      //     width: width,
      //     height: height,
      //     child: Scaffold(
      //       backgroundColor: Colors.transparent,
      //       body: Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Center(),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

// void _checkUser(context) async {
//   final storage = new FlutterSecureStorage();
//   print('${await storage.readAll()}');
//   Map<String, String> allStorage  = await storage.readAll();
//   String statusUser = '';
//   if(allStorage != null)
//     {
//       allStorage.forEach((k, v) {
//         print('k : $k, v: $v');
//         if(v== STATUS_LOGIN) statusUser = k;
//       });
//     } else {
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => Login()));
//   }
//   if(statusUser != null && statusUser != '') {
//     var userEmail;
//
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(userEmail: statusUser)));
//   } else {
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
//   }
// }
