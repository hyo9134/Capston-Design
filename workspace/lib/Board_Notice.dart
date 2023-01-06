import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Board_Notice extends StatelessWidget {
  Board_Notice({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 126.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '기숙사 게시판',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff995689),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 27.0),
            Pin(size: 23.0, start: 26.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.4961),
            Pin(size: 43.0, end: 23.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, end: 26.0),
            Pin(size: 37.0, end: 26.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.2781),
            Pin(size: 36.0, end: 27.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, start: 28.0),
            Pin(size: 36.0, end: 27.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.7195),
            Pin(size: 43.0, end: 23.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 655.0, end: 129.0),
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  primary: false,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 19,
                    runSpacing: 17,
                    children: [{}, {}, {}, {}, {}, {}, {}].map((itemData) {
                      return SizedBox(
                        width: 374.0,
                        height: 78.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, end: -1.0),
                              child: SvgPicture.string(
                                _svg_hr49fj,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 128.0, start: 0.5),
                              Pin(size: 23.0, start: 0.0),
                              child: Text(
                                '게시글 제목 출력',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 17,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            ),
                            Align(
                              alignment: Alignment(-1.0, 0.443),
                              child: SizedBox(
                                width: 183.0,
                                height: 17.0,
                                child: Text(
                                  '게시글 내용 출력란입니다..아아',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 13,
                                    color: const Color(0xff000000),
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 48.0, start: 72.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x87ffffff),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1.0, color: const Color(0x87707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 186.0, start: 39.0),
            Pin(size: 20.0, start: 86.0),
            child: Text(
              '[공지] 기숙사 방 공짜입니다',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 15,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, end: 39.0),
            Pin(size: 23.0, start: 84.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.71), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, end: 27.0),
            Pin(size: 29.0, start: 25.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_hr49fj =
    '<svg viewBox="27.5 253.0 374.0 1.0" ><path transform="translate(27.5, 253.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.7" stroke="#707070" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
