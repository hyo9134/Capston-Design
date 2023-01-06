import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Join_2 extends StatelessWidget {
  Join_2({
    Key? key,
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
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.3204),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.4185),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.5165),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.7127),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 49.0, middle: 0.6146),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff9c9393)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, end: 59.0),
            Pin(size: 49.0, middle: 0.7936),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff2dfef),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, start: 59.0),
            Pin(size: 49.0, middle: 0.7936),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x66f2dfef),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, start: 59.0),
            Pin(size: 20.0, middle: 0.2241),
            child: Text(
              '학교 이메일 *',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 15,
                color: const Color(0xffbbbbbb),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 70.0, start: 59.0),
            Pin(size: 20.0, middle: 0.2881),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '비밀번호 ',
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
            Pin(size: 104.0, start: 59.0),
            Pin(size: 20.0, middle: 0.383),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '비밀번호 확인 ',
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
            Pin(size: 40.0, start: 59.0),
            Pin(size: 20.0, middle: 0.4779),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '전공 ',
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
            Pin(size: 40.0, start: 59.0),
            Pin(size: 20.0, middle: 0.6678),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                children: [
                  TextSpan(
                    text: '학년 ',
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
            Pin(size: 109.0, start: 59.0),
            Pin(size: 20.0, middle: 0.5728),
            child: Text(
              '부전공/복수전공',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 15,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(-0.32, -0.499),
            child: SizedBox(
              width: 234.0,
              height: 16.0,
              child: Text(
                'hanshin@hs.ac.kr (인증된 학교이메일 출력)',
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
            alignment: Alignment(-0.478, -0.345),
            child: SizedBox(
              width: 175.0,
              height: 16.0,
              child: Text(
                '사용하실 비밀번호를 입력하세요',
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
            alignment: Alignment(-0.374, -0.156),
            child: SizedBox(
              width: 217.0,
              height: 16.0,
              child: Text(
                '사용하실 비밀번호를 한번 더 입력하세요',
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
            alignment: Alignment(-0.397, 0.033),
            child: SizedBox(
              width: 209.0,
              height: 16.0,
              child: Text(
                '전공들 리스트형태로 제공, 아래도 같음',
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
            alignment: Alignment(0.412, 0.57),
            child: SizedBox(
              width: 30.0,
              height: 20.0,
              child: Text(
                '가입',
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
            alignment: Alignment(-0.407, 0.57),
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
