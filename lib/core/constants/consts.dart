import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const primaryColor = Color(0xFF2bc016);
const secondaryColor = Color(0xFF004643);
const greyColor = Color(0xFF6c757d);
const purpleColor = Color(0xFF28044d);
const backGroundColor = Color(0xFF000000);
const blueColor = Color(0xFF03045e);
const yellowColor = Color(0xFFffb703);
const redColor = Color(0xFF780000);
const skyColor = Color(0xFF2ec4b6);
const yellowOneColor = Color(0xFFff9f1c);
const whiteShadeColor = Color(0xFFebebd3);
const whiteColor = Colors.white;
const blackColor = Colors.black;
const blackShadeColor = Color(0xFF161b33);
const roseColor = Color(0xFFff006e);

Widget sizeVer(double height) {
  return SizedBox(
    height: height,
  );
}

Widget sizeHor(double width) {
  return SizedBox(
    width: width,
  );
}

class PageConst {
  static const String editProfilePage = "editProfilePage";
  static const String updatePostPage = "updatePostPage";
  static const String commentPage = "commentPage";
  static const String signInPage = "signInPage";
  static const String signUpPage = "signUpPage";
}

class FirebaseConst {
  static const String users = "users";
  static const String posts = "posts";
  static const String comment = "comment";
  static const String replay = "replay";
}

void toast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: blueColor,
    textColor: whiteColor,
    fontSize: 16,
  );
}
