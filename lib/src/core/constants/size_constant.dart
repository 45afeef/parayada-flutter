import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeConstant {
  // sizes
  static const double xsmall = 2;
  static const double small = 4;
  static const double medium = 8;
  static const double large = 16;
  static const double xlarge = 24;
  static const double xxlarge = 32;

  // Heading font size
  static const double h1 = 26.0;
  static const double h2 = 24.0;
  static const double h3 = 22.0;
  static const double h4 = 20.0;
  static const double h5 = 18.0;
  static const double h6 = 16.0;
  static const double contentFontLarge = 16.0;
  static const double contentFontNormal = 14.0;
  static const double contentFontSmall = 12.0;
  static const double contentFontxSmall = 10.0;

  // Aspect ratios
  static const double videoRatio = 16 / 9;
  static const double squareRatio = 1;

  // Padding
  static const EdgeInsets xsmallPadding = EdgeInsets.all(xsmall);
  static const EdgeInsets smallPadding = EdgeInsets.all(small);
  static const EdgeInsets mediumPadding = EdgeInsets.all(medium);
  static const EdgeInsets largePadding = EdgeInsets.all(large);
  static const EdgeInsets xlargePadding = EdgeInsets.all(xlarge);
  static const EdgeInsets xxlargePadding = EdgeInsets.all(xxlarge);
}

class AppTextStyle {
  static TextStyle h1Style = GoogleFonts.nunito(
    fontSize: SizeConstant.h1,
  );

  static const TextStyle h2Style = TextStyle(
    fontSize: SizeConstant.h2,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h3Style = TextStyle(
    fontSize: SizeConstant.h3,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h4Style = TextStyle(
    fontSize: SizeConstant.h4,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h5Style = TextStyle(
    fontSize: SizeConstant.h5,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h6Style = TextStyle(
    fontSize: SizeConstant.h6,
    fontWeight: FontWeight.bold,
  );

  static TextStyle contentStyleNormal = GoogleFonts.nunito(
    fontSize: SizeConstant.contentFontNormal,
  );

  static TextStyle contentStyleSmall = GoogleFonts.nunito(
    fontSize: SizeConstant.contentFontSmall,
  );
  // Add other text styles here
}
