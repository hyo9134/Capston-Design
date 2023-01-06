import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Recruit.dart';
import 'Settings.dart';
import 'Timetable.dart';

class UniversityMap extends StatelessWidget {
  UniversityMap({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0,), //위 간격
          Container(
            child:Row(
                children: [
                  Container(
                    child:IconButton(
                      icon:Icon(Icons.arrow_back_outlined),
                      color: Colors.black.withOpacity(0.71),
                      iconSize: 30,
                      onPressed: () {
                        Navigator.pop(context,false);
                      },
                    ),
                    margin: const EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child:Text(
                      '학교 한눈에 보기',
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
                ]
            ),
            // padding: const EdgeInsets.fromLTRB(8.0,20.0,0,0),
            margin: const EdgeInsets.only(top: 30),
          ),
          SizedBox(
            height: 280,
            width: 350,
            child: Image.asset('assets/images/map1.jpg'),
          ),
              SizedBox(
                height: 280,
                width: 350,
                child: Image.asset('assets/images/map2.jpg'),
              ),
              SizedBox(
                height: 280,
                width: 350,
                child: Image.asset('assets/images/map3.jpg'),
              ),

            ],
          ),
              ),));
  }
}