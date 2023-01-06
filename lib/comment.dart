import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:comment_box/comment/test.dart';
import 'package:comment_box/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hanmodumo/main.dart';

import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:like_button/like_button.dart';
import 'package:comment_tree/comment_tree.dart';
import 'package:flutter_mentions/flutter_mentions.dart';
import 'package:flutter_mentions/flutter_mentions.dart';
import 'package:english_words/english_words.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Comment extends StatefulWidget {
  var userEmail;

  Comment ({Key? key, required this.userEmail,
  }) : super(key: key);

  @override
  _TestMeState createState() => _TestMeState(this.userEmail);
}


class _TestMeState extends State<Comment> {
  _TestMeState(String userEmail);

  Object? get isEmpty => null;

  final formKey = GlobalKey<FormState>();
  int _counter2 = 0;
  int _counter = 0;
  int _likeCount = 0;
  int accuseCount = 0;
  final uid=   FirebaseAuth.instance.currentUser?.uid;

  final TextEditingController commentController = TextEditingController();
  final TextEditingController commentController2 = TextEditingController();
  List filedata = [];
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  static final storage = FlutterSecureStorage();
  var doc = FirebaseFirestore.instance.collection('userInformation').doc('rlaskgus03@hs.ac.kr').collection('accuse').doc('WmN9aNbDgVjiZxdvwLVt');

  List<Widget> bodyElements = [];
  bool _isLiked = false;
  final List<WordPair> pair = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final TextStyle_biggerFont = const TextStyle(fontSize: 17.0);

  // static String? get userEmail => null;


  //_counter의 값을 저장하기
  void setData(int value) async{
    var key='$_counter';
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.setInt(key, value);
  }

//_counter의 값을 불러오기
  void loadData() async{
    var key='$_counter';
    SharedPreferences sp=await SharedPreferences.getInstance();
    setState(() {
      var value=sp.getInt(key);
      if(value==null)
        _counter2=0;
      else
        _counter2=value;
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter2++;
      setData(_counter2);
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter2--;
      setData(_counter2);
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }


  Future<bool> onlikeTapped (bool _isLiked) async{
    return !_isLiked;
  }


  // Widget _buildRow(WordPair pair) {
  //   final bool alreadySaved = _saved.contains(pair);
  //   return ListTile(
  //     title: Text(
  //       pair.asPascalCase,
  //       style: TextStyle_biggerFont,
  //     ),
  //     trailing: Icon(
  //       alreadySaved ? Icons.favorite : Icons.favorite_border,
  //       color: alreadySaved? Colors.red : null,
  //     ),
  //     onTap: () {
  //       if (alreadySaved) {
  //         _saved.remove(pair);
  //       }
  //       else {
  //         _saved.add(pair);
  //       }
  //     },
  //   );
  // }


  void AccuseCount() {
    accuseCount++;
  }

  Widget commentChild(data) {
    final bool alreadySaved = _saved.contains(pair);
    return ListView(

        children: [
          for (var i = 0; i < data.length; i++)
            Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
                child: ListTile(
                    leading: GestureDetector(
                      onTap: () async {
                        // Display the image in large form.
                        print("Comment Clicked");
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.blue,
                            borderRadius: new BorderRadius.all(Radius.circular(50))),

                      ),
                    ),
                    title: Text(
                      data[i]['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(data[i]['message']),
                    trailing:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(onPressed: () {
                            setState(() {

                              var value = {
                                'name': '익명' + '$_counter',
                                'message': '@' + data[i]['name'] +' ' + commentController2.text
                              };
                              filedata.insert(0, value);
                              _counter++;
                            });
                            // Card(
                            //      child: Container(
                            //         height: 50.0,
                            //         width: 50.0,
                            //         decoration: new BoxDecoration(
                            //             color: Colors.blue,
                            //             borderRadius: new BorderRadius.all(Radius.circular(50))),
                            //
                            //       ),
                            //     child: ListTile(
                            //     title: Text(
                            //     '익명1',
                            //     style: TextStyle(fontWeight: FontWeight.bold),
                            // ),
                            // subtitle: Text('안녕'),
                            // trailing:  Row(
                            // mainAxisSize: MainAxisSize.min,
                            // children: <Widget>[
                            //   IconButton( icon: _isLiked
                            //       ? Icon(
                            //     Icons.favorite,
                            //     color: Colors.blue,
                            //   )
                            //       : Icon(Icons.favorite_border),
                            //       onPressed: () {
                            //         if (_isLiked) {
                            //           _likeCount--;
                            //           _isLiked = false;
                            //           setState(() {
                            //
                            //           });
                            //           print(_likeCount);}
                            //         else {
                            //           print(true);
                            //
                            //           _likeCount++;
                            //           _isLiked = true;
                            //           setState(() {
                            //           });
                            //           print(_likeCount);
                            //
                            //
                            //           //   _counter2++;
                            //           //   setState(() {
                            //           //   });
                            //           // }, icon: Icon(Icons.favorite)),
                            //           // Text('$_counter2')
                            //
                            //         }}),
                            //   Text('$_likeCount')
                            //
                            // ])));
                          }, icon: Icon(Icons.comment)),
                          IconButton(onPressed: () {
                            setState(() {
                            });
                          }, icon: Icon(Icons.mail)),
                          IconButton(onPressed: () {
                            AccuseCount();
                            doc.update({'신고' : FieldValue.increment(1)}) // <-- Updated data
                                .then((_) => print('Success'))
                                .catchError((error) => print('Failed: $error'));
                            flutterToast();

                          }, icon: Icon(Icons.not_interested)),

                          IconButton( icon: _isLiked ? Icon(
                              Icons.favorite,
                              color: Colors.blue
                          )
                              : Icon(Icons.favorite_border),
                              onPressed: () {
                                if (_counter2 == 1) {
                                  _decrementCounter();
                                  _isLiked = false;
                                  setState(() {
                                    loadData();
                                  });
                                  print(_counter2);
                                }
                                else {
                                  _isLiked = true;
                                  _incrementCounter();
                                  setState(() {
                                    loadData();
                                  });
                                  print(_counter2);

                                  //   _counter2++;
                                  //   setState(() {
                                  //   });
                                  // }, icon: Icon(Icons.favorite)),
                                  // Text('$_counter2')

                                }}),
                          Text('$_counter2')
                        ])))]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment test", style: TextStyle(color: Colors.deepPurpleAccent)),
        backgroundColor: Colors.white,
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.deepPurpleAccent,
            icon: Icon(Icons.arrow_back)),),
      body: Container(
        child: CommentBox(
          userImage:
          "",
          child: commentChild(filedata),
          labelText: 'Write a comment...',
          withBorder: false,
          errorText: 'Comment cannot be blank',
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': '익명' + '$_counter',
                  'message': commentController.text
                };
                filedata.insert(0, value);
                _counter++;
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: '신고되었습니다',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT
  );
}

