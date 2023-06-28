import 'package:flutter/material.dart';


import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//light style
TextStyle getLightTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}

//regular style
TextStyle getRegularTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}

//medium style
TextStyle getMediumTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}

//semibold style
TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}

//bold style
TextStyle getBoldTextStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  print(FontConstants.fontFamily);
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

//Underline Style
TextStyle getUnderlineRegularTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: FontWeightManager.regular,
    decoration: TextDecoration.underline,
  );
}
