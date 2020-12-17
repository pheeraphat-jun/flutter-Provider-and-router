import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier {
  //เป็นคลาสแรงจะเข้ามาเมื่อเรียก provider
  String _text;
  HomeProvider() {
    settext();
  }
  settext() {
    _text = "Welcome";
  }



  String get text => _text;
}
