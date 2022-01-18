import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF81B586);
const kPrimaryWhite = Color(0xFFECF0F3);
const kLikedColor = Color(0xFFF95656);

const kWelcomeScreenTextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF9F9F9F),
);

const kTextFieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.person,
    color: kPrimaryColor,
  ),
  hintText: "Name",
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    borderSide: BorderSide(color: Colors.grey),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);

const kSearchScreenInputDecoration = InputDecoration(
  suffixIcon: Icon(
    Icons.search,
    color: Colors.black54,
  ),
  filled: true,
  fillColor: Colors.white,
  hintText: "Search..",
  hintStyle: TextStyle(color: Colors.black54),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide(color: Colors.black45),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

const kSmallTextStyle = TextStyle(fontSize: 10, color: Colors.grey);
