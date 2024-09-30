import 'package:flutter/material.dart';
import 'package:my_app02/widgets/constant.dart';




Widget customText(String text, double size){
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: kdark,
      fontWeight: FontWeight.bold,
    ),
  );
}