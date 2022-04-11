import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xff6c5ecf);
Color secondaryColor = Color(0xff3babbe);
Color alertColor = Color(0xffed6363);
Color priceColor = Color(0xff2c96f1);
Color backgroundColor1 = Color(0xff1f1d2b);
Color backgroundColor2 = Color(0xff2b2937);
Color backgroundColor3 = Color(0xff242231);
Color primaryTextColor = Color(0xfff1f0f2);
Color secondaryTextColor = Color(0xff999999);
Color subtitleColor = Color(0xff504f5e);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
