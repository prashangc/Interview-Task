import 'package:flutter/material.dart';

class MyColor {
  MyColor._();
  static Color backgroundColor = const Color(0xFFE9ECF4);
  static Color kBackgroundColor = const Color(0xFFE9ECF4);
  static Color kWhite = Colors.white;
  static Color kTransparent = Colors.transparent;
  static Color kRed = Colors.red;
  static Color kGrey = const Color(0xFFE9ECF4);
  static Color kGreen = Colors.green;
  static Color kAmber = Colors.amber;
  static Color kOrange = Colors.orange;
  static Color kBlue = Colors.blue;
  static Color kBlack = Colors.black;
  static Color kPurple = Colors.purple;
  static Color kPrimary = const Color(0xFF87CEEB);
  static Color kError = const Color(0xFFEEBFBF);
  static Color myPurple = const Color(0xFF585EAA);
  static Color myYellow = const Color(0xFFFCB31F);
  static Color myRed = const Color(0xFFF59394);

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 0, 0, 0),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFD9E2),
    onPrimaryContainer: Color(0xFF3E001D),
    secondary: Color(0xFF74565F),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFD9E2),
    onSecondaryContainer: Color(0xFF2B151C),
    tertiary: Color(0xFF7C5635),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFDCC1),
    onTertiaryContainer: Color(0xFF2E1500),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201A1B),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201A1B),
    surfaceVariant: Color(0xFFF2DDE1),
    onSurfaceVariant: Color(0xFF514347),
    outline: Color(0xFF837377),
    onInverseSurface: Color(0xFFFAEEEF),
    inverseSurface: Color(0xFF352F30),
    inversePrimary: Color(0xFFFFB1C8),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFB90063),
    outlineVariant: Color(0xFFD5C2C6),
    scrim: Color(0xFF000000),
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB1C8),
    onPrimary: Color(0xFF650033),
    primaryContainer: Color(0xFF8E004A),
    onPrimaryContainer: Color(0xFFFFD9E2),
    secondary: Color(0xFFE3BDC6),
    onSecondary: Color(0xFF422931),
    secondaryContainer: Color(0xFF5A3F47),
    onSecondaryContainer: Color(0xFFFFD9E2),
    tertiary: Color(0xFFEFBD94),
    onTertiary: Color(0xFF48290C),
    tertiaryContainer: Color(0xFF623F20),
    onTertiaryContainer: Color(0xFFFFDCC1),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF201A1B),
    onBackground: Color(0xFFEBE0E1),
    surface: Color(0xFF201A1B),
    onSurface: Color(0xFFEBE0E1),
    surfaceVariant: Color(0xFF514347),
    onSurfaceVariant: Color(0xFFD5C2C6),
    outline: Color(0xFF9E8C90),
    onInverseSurface: Color(0xFF201A1B),
    inverseSurface: Color(0xFFEBE0E1),
    inversePrimary: Color(0xFFB90063),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB1C8),
    outlineVariant: Color(0xFF514347),
    scrim: Color(0xFF000000),
  );
}
