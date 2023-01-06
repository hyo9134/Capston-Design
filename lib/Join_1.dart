import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Join_1 extends StatelessWidget {
  Join_1({
    Key ?key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.5),
            Pin(size: 40.0, start: 89.0),
            child: Text(
              '회원가입',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 30,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 266.0, start: 59.0),
            Pin(size: 49.0, middle: 0.2543),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.3523),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, end: 59.0),
            Pin(size: 49.0, middle: 0.4333),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff2dfef),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, start: 59.0),
            Pin(size: 49.0, middle: 0.4333),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x66f2dfef),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, end: 59.0),
            Pin(size: 50.0, middle: 0.2534),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff2dfef),
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, start: 59.0),
            Pin(size: 20.0, middle: 0.2241),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '학교 이메일 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: const Color(0xfff52121),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 74.0, start: 59.0),
            Pin(size: 20.0, middle: 0.319),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '회원 구분 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: const Color(0xfff52121),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.677, -0.474),
            child: SizedBox(
              width: 26.0,
              height: 17.0,
              child: Text(
                '인증',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 13,
                  color: const Color(0xff2e2e2e),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.543, -0.475),
            child: SizedBox(
              width: 139.0,
              height: 16.0,
              child: Text(
                '학교 이메일을 입력하세요',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xffbbbbbb),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.32, -0.284),
            child: SizedBox(
              width: 234.0,
              height: 16.0,
              child: Text(
                '학생 / 교수 / 교직원 등으로 리스트형태 구현',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xffbbbbbb),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.412, -0.128),
            child: SizedBox(
              width: 30.0,
              height: 20.0,
              child: Text(
                '다음',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff2e2e2e),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.407, -0.128),
            child: SizedBox(
              width: 30.0,
              height: 20.0,
              child: Text(
                '이전',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff2e2e2e),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
