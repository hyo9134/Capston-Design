import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardView_Vote extends StatelessWidget {
  BoardView_Vote({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 297.0, start: 134.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: const Color(0x73d8b9d2)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 212.0, middle: 0.7031),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: const Color(0x73d8b9d2)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '자유게시판',
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
            Pin(size: 113.0, start: 40.0),
            Pin(size: 24.0, start: 137.0),
            child: Text(
              '추천 해주세요',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff000000),
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
            Pin(size: 26.0, start: 27.0),
            Pin(size: 17.0, middle: 0.5281),
            child: Text(
              '댓글',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 194.0, start: 40.0),
            Pin(size: 71.0, middle: 0.207),
            child: Text(
              '오늘 저녁 메뉴\n매운 찜닭? 달달한 고구마\n뭐먹을까요?',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.291),
            child: SizedBox(
              width: 34.0,
              height: 23.0,
              child: Text(
                '찜닭',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 17,
                  color: const Color(0xff000000),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.163),
            child: SizedBox(
              width: 90.0,
              height: 23.0,
              child: Text(
                '먹지 않는다',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 17,
                  color: const Color(0xff000000),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 14.0, end: 42.0),
            Pin(size: 15.0, middle: 0.3227),
            child: Text(
              '22',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, end: 60.0),
            Pin(size: 17.0, middle: 0.3223),
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
            Pin(start: 27.0, end: 27.0),
            Pin(size: 39.0, end: 96.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff8eef6),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 128.0, start: 13.0),
                  Pin(size: 20.0, middle: 0.4737),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: '댓글을 입력하세요.',
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, end: 7.0),
                  Pin(size: 19.0, middle: 0.55),
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
          ),
          Pinned.fromPins(
            Pin(size: 20.0, end: 27.0),
            Pin(size: 20.0, start: 80.0),
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
            Pin(size: 76.0, start: 59.0),
            Pin(size: 21.0, start: 78.0),
            child: Text(
              '익명12345',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 32.0),
            Pin(size: 15.0, start: 103.0),
            child: Text(
              '2022-05-27 / 15:47',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 32.0),
            Pin(size: 23.0, start: 77.0),
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
            Pin(size: 329.0, end: 32.0),
            Pin(size: 41.0, middle: 0.7028),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 45.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 45.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 2.0),
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
                  Pin(size: 19.0, start: 0.0),
                  Pin(size: 19.0, start: 1.0),
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
                  Pin(size: 18.0, start: 21.0),
                  Pin(size: 18.0, start: 2.0),
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
          ),
          Pinned.fromPins(
            Pin(size: 329.0, end: 32.0),
            Pin(size: 41.0, middle: 0.7514),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 45.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 45.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 2.0),
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
                  Pin(size: 19.0, start: 0.0),
                  Pin(size: 19.0, start: 1.0),
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
                  Pin(size: 18.0, start: 21.0),
                  Pin(size: 18.0, start: 2.0),
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
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.3395),
            child: SvgPicture.string(
              _svg_uyf72q,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.4022),
            child: SvgPicture.string(
              _svg_p7maa,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, start: 167.0),
            child: SvgPicture.string(
              _svg_fmuelq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 27.0),
            Pin(size: 1.0, middle: 0.6032),
            child: SvgPicture.string(
              _svg_kefylq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 32.0),
            Pin(size: 45.0, middle: 0.5766),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 25.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 25.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 1.0),
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
                  Pin(size: 18.0, start: 0.0),
                  Pin(size: 18.0, start: 1.0),
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
                  Pin(size: 19.0, end: 24.0),
                  Pin(size: 19.0, start: 2.0),
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
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 32.0),
            Pin(size: 45.0, middle: 0.6459),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 59.0, start: 25.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '익명124',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 132.0, start: 25.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    '오늘은 찜닭먹어요',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 0.0),
                  Pin(size: 20.0, start: 1.0),
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
                  Pin(size: 18.0, start: 0.0),
                  Pin(size: 18.0, start: 1.0),
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
                  Pin(size: 19.0, end: 24.0),
                  Pin(size: 19.0, start: 2.0),
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
          ),
          Align(
            alignment: Alignment(-0.008, -0.232),
            child: SizedBox(
              width: 35.0,
              height: 17.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 17.0, start: 0.0),
                    Pin(start: 0.0, end: 0.0),
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
                    Pin(size: 14.0, end: 0.0),
                    Pin(start: 1.0, end: 1.0),
                    child: Text(
                      '54',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 13,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.003, -0.105),
            child: SizedBox(
              width: 35.0,
              height: 17.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 17.0, start: 0.0),
                    Pin(start: 0.0, end: 0.0),
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
                    Pin(size: 14.0, end: 0.0),
                    Pin(start: 1.0, end: 1.0),
                    child: Text(
                      '54',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 13,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uyf72q =
    '<svg viewBox="27.0 314.0 374.0 1.0" ><path transform="translate(27.0, 314.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p7maa =
    '<svg viewBox="27.0 372.0 374.0 1.0" ><path transform="translate(27.0, 372.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fmuelq =
    '<svg viewBox="27.0 167.0 374.0 1.0" ><path transform="translate(27.0, 167.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kefylq =
    '<svg viewBox="27.0 558.0 374.0 1.0" ><path transform="translate(27.0, 558.0)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.45" stroke="#d8b9d2" stroke-width="2" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
