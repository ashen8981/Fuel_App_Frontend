import 'package:flutter/material.dart';

//screen passing

void nextScreen(context , page){
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context , page){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
}


//text widget

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff649EFF), width: 2)
  ),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff649EFF), width: 2)
  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff649EFF), width: 2)
  ),
);
