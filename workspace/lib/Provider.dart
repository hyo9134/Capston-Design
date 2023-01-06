// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirebaseAuthService with ChangeNotifier {
  FirebaseAuthService({auth}) : _auth = auth ?? FirebaseAuth.instance;

  FirebaseAuth _auth;

  Future<User?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    final credential = EmailAuthProvider.credential
      (email: email, password: password);
    final authResult = await _auth.signInWithCredential(credential);
    return authResult.user;
  }
}

class UserProvider extends ChangeNotifier {
  String _email = "";
  String _password = "";
  String _subject = "";
  String _grade = "";

  String get email => _email;
  String get password => _password;
  String get subject => _subject;
  String get grade => _grade;

  void set email(String input_email) {
    _email = input_email;
    notifyListeners();
  }

  void set password(String input_password) {
    _password = input_password;
    notifyListeners();
  }

  void set subject(String input_subject) {
    _subject = input_subject;
    notifyListeners();
  }
  void set grade(String input_grade) {
    _grade = input_grade;
    notifyListeners();
  }

}





// import 'package:flutter/cupertino.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:logger/logger.dart';
// import 'package:hanmodumo/auth.dart';
// import 'Provider.dart';
//
// Logger logger = Logger();
//
// class FirebaseProvider with ChangeNotifier {
//   final FirebaseAuth fAuth = FirebaseAuth.instance; // Firebase 인증 플러그인의 인스턴스
//   User _user; // Firebase에 로그인 된 사용자
//
//   String _lastFirebaseResponse = ""; // Firebase로부터 받은 최신 메시지(에러 처리용)
//
//   FirebaseProvider() {
//     logger.d("init FirebaseProvider");
//     _prepareUser();
//   }
//
//   User getUser() {
//     return _user;
//   }
//
//   void setUser(User value) {
//     _user = value;
//     notifyListeners();
//   }
//   _prepareUser() {
//     fAuth.currentUser().then((User currentUser) {
//       setUser(currentUser);
//     });
//   }
//   // Firebase로부터 로그아웃
//   signOut() async {
//     await fAuth.signOut();
//     setUser(null);
//   }