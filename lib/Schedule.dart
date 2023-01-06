import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Schedule extends StatelessWidget {
  Schedule({
    Key ?key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 86.0, middle: 0.5),
            Pin(size: 27.0, start: 23.0),
            child: Text(
              '학사 일정',
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
            Pin(start: 59.0, end: 59.0),
            Pin(size: 35.0, start: 71.0),
            child: BlendMask(
              blendMode: BlendMode.darken,
              child: Container(
                color: const Color(0x87e6c2e1),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, middle: 0.5),
            Pin(size: 23.0, start: 77.0),
            child: Text(
              '5월',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 30.0, start: 27.0),
            Pin(size: 30.0, start: 73.0),
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
            Pin(size: 30.0, end: 27.0),
            Pin(size: 30.0, start: 73.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //뒤로가기 버튼
          Pinned.fromPins(
            Pin(size: 23.0, start: 5.0),
            Pin(size: 23.0, start: 15.0),
            child: IconButton(
              icon:Icon(Icons.arrow_back_outlined),
              color: Colors.black.withOpacity(0.71),
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context,false);
              },
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
            Pin(size: 666.0, end: -120.0),// 전체 일정 위아래
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [ {}, {}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 374.0,
                    height: 76.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 1.0, end: -1.0),
                          child: SvgPicture.string(
                            _svg_d94ev3,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 67.0, start: 0.5),
                          Pin(size: 23.0, start: 0.0),
                          child: Text(
                            '5월 15일',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 17,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 56.0, start: 0.5),
                          Pin(size: 17.0, middle: 0.6154),
                          child: Text(
                            '스승의 날',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 13,
                              color: const Color(0xff000000),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_d94ev3 =
    '<svg viewBox="27.5 250.5 374.0 1.0" ><path transform="translate(27.5, 250.5)" d="M 0 0 L 374 0" fill="none" fill-opacity="0.7" stroke="#707070" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
