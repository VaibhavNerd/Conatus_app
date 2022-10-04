import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';

Future<bool> setFilled (bool form) async{
   SharedPreferences prf= await SharedPreferences.getInstance();
   prf.setBool("formFilled", form);
}
Future<bool> getFilled () async{
  SharedPreferences prf= await SharedPreferences.getInstance();
  bool formFilled=prf.getBool("formFilled");
  return formFilled;
}