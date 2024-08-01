import 'package:cult_app/data/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class AppHelper {
  static String? token;

  static User? user;

  static int? ordId;

  static GlobalKey<ScaffoldState> keyAfisha = GlobalKey();
  static GlobalKey<ScaffoldState> keyTrupa = GlobalKey();
  static GlobalKey<ScaffoldState> keyTiket = GlobalKey();
  static GlobalKey<ScaffoldState> keyNews = GlobalKey();

  static String? appEmail;
  static String? appPhone;
  static bool? showAuth;
  static showToastD(BuildContext context,
      {Color bgColor = Colors.grey,
      Color textColor = Colors.white,
      required String text,
      int times = 4,
      Exception? e}) {
    showToast(text,
        context: context,
        backgroundColor: bgColor,
        textStyle: TextStyle(color: textColor));

    // Fluttertoast.showToast(
    //     // msg: text,
    //     // //  toastLength: Toast.LENGTH_LONG,
    //     // gravity: ToastGravity.CENTER,
    //     // // timeInSecForIosWeb: times,
    //     // textColor: textColor,
    //     // backgroundColor: bgColor,
    //     // fontSize: 14.0,
    //     msg: "This is Colored Toast with android duration of 5 Sec",
    //     toastLength: Toast.LENGTH_SHORT,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white);
  }
}
