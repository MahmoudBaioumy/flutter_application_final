import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle GetTitleStyle(
        {Color color = const Color(0xFFFFFFFF),
        double? fontSize = 18,
        FontWeight? fontWeight = FontWeight.bold}) =>
    TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.poppins().fontFamily,
     
    );

TextStyle GetbodyStyle(
        {Color color = const Color(0xFF35364F),
        double? fontSize = 14,
        FontWeight? fontWeight = FontWeight.w400}) =>
    TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );

TextStyle GetsmallStyle(
        {Color color = const Color(0xFF35364F),
        double? fontSize = 12,
        FontWeight? fontWeight = FontWeight.w500}) =>
    TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
