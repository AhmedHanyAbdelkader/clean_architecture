import 'package:clean_architecture/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle? _getTextStyle(fontFamily,double fontSize, FontWeight fontWeight,Color color){
  return TextStyle(fontFamily: fontFamily, fontSize: fontSize, fontWeight: fontWeight, color: color);
}

/// small Style
TextStyle? getSmallStyle({
  fontFamily =  FontConstants.arialFontFamily,
  fontSize = FontSize.s12,
  fontWeight = FontWeighManager.small,
  required Color color
}){
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}

/// regular
TextStyle? getRegularStyle({fontFamily =  FontConstants.arialFontFamily, fontSize = FontSize.s16, fontWeight = FontWeighManager.regular, required Color color})
{
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}

TextStyle? getMediumStyle({
  fontFamily =  FontConstants.arialFontFamily,
  fontSize = FontSize.s18,
  fontWeight = FontWeighManager.medium,
  required Color color
}){
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}

TextStyle? getSemiBoldStyle({
  fontFamily =  FontConstants.arialFontFamily,
  fontSize = FontSize.s20,
  fontWeight = FontWeighManager.semiBold,
  required Color color
}){
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}

TextStyle? getBoldStyle({
  fontFamily =  FontConstants.arialFontFamily,
  fontSize = FontSize.s22,
  fontWeight = FontWeighManager.bold,
  required Color color
}){
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}


TextStyle? getLightStyle({
  fontFamily =  FontConstants.arialFontFamily,
  fontSize = FontSize.s22,
  fontWeight = FontWeighManager.bold,
  required Color color
}){
  return _getTextStyle(fontFamily,fontSize,fontWeight,color);
}

