import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanmodumo/Alarm.dart';
import 'package:hanmodumo/ChatPage.dart';

import 'Home.dart';

class Chatting extends StatelessWidget {
  var userEmail;

  Chatting({
    Key? key, required this.userEmail
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //뒤로가기
          Container(
            child: Row(children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_outlined),
                  color: Colors.black.withOpacity(0.71),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home(userEmail: userEmail,)),
                    );
                  },
                ),
                margin: const EdgeInsets.only(left: 10.0),
              ),
              Container(
                child: Text(
                  '채팅방 및 알림',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 20,
                    color: const Color(0xff995689),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                margin: const EdgeInsets.only(left: 90.0),
              )
            ]),
            // padding: const EdgeInsets.fromLTRB(8.0,20.0,0,0),
            margin: const EdgeInsets.only(top: 25),
          ),
          Container(
            child: Row(children: [
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                   // backgroundColor: Color(0xffced4da),
                    padding: EdgeInsets.only(left: 75, right: 75),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Alarm(userEmail: userEmail)),
                    );
                  },
                  child: Text("알림"),
                ),
                margin: const EdgeInsets.only(left: 15.0),
              ),
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFEEEEEE),
                    padding: EdgeInsets.only(left: 75, right: 75),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: Color(
                        0xffffffff)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chatting(userEmail: userEmail)),
                    );
                  },
                  child: Text("채팅방"),
                ),
                margin: const EdgeInsets.only(right: 15.0,),
              )
            ]),
            margin: const EdgeInsets.only(top: 10),
          ),
          Container(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFEEEEEE),
                padding: EdgeInsets.only(left: 75, right: 75),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, color: Color(
                    0xffffffff)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage(userEmail: userEmail)),
                );
              },
              child: Text("채팅 테스트방"),
            ),
            margin: const EdgeInsets.only(right: 15.0,),
          )
          // Container(
          //   child: Row(children: [
          //     Container(
          //       child: IconButton(
          //         icon: Icon(Icons.face),
          //         color: Colors.black.withOpacity(0.71),
          //         iconSize: 30,
          //         onPressed: () {},
          //       ),
          //       margin: const EdgeInsets.only(left: 18.0),
          //     ),
          //     Container(
          //       child: Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               child: Text(
          //                 '익명',
          //                 style: TextStyle(
          //                   fontFamily: 'Arial',
          //                   fontSize: 14,
          //                   color: const Color(0xff000000),
          //                 ),
          //                 softWrap: false,
          //               ),
          //             ),
          //             // Container(
          //             //   child: Text(
          //             //     "아이디",
          //             //     style: TextStyle(
          //             //       fontFamily: 'Arial',
          //             //       fontSize: 9,
          //             //       color: const Color(0xff000000),
          //             //       fontWeight: FontWeight.w700,
          //             //     ),
          //             //     softWrap: false,
          //             //   ),
          //             // )
          //           ]),
          //     )
          //   ])
          //   , margin: const EdgeInsets.only(top: 10.0),),
          // Container(
          //   child: Text(
          //     "한모두모 기능추가",
          //     style: TextStyle(
          //       fontFamily: 'Arial',
          //       fontSize: 20,
          //       color: const Color(0xff000000),
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          //   // padding: const EdgeInsets.fromLTRB(40,90,0,0),
          //   margin: const EdgeInsets.only(left: 40),
          // ),
        ],
      ),
    );
  }
}

const String _svg_hr49fj =
    '<svg viewBox="27.5 253.0 374.0 1.0" ><path transform="translate(27.5, 253.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.7" stroke="#707070" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xhr1yj =
    '<svg viewBox="27.0 106.0 187.0 1.0" ><path transform="translate(27.0, 106.0)" d="M 0 0 L 187 0" fill="none" stroke="#995689" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
