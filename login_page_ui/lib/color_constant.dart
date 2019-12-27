import 'package:flutter/material.dart';

const orange = Color(0xffFAAC47);
const darkblue = Color(0xff444351);
const lightblue = Color(0xff62C4E9);

const kTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kInputDec = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  hintText: 'Name',
  hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
);
const kTextFieldStyle =
    TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold);
