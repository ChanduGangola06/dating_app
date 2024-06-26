import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.primary,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              8.r,
            ),
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(appTheme.gray600),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(appTheme.gray600),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.gray50,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            34,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    background: Color(0XFF002987),
    error: Color(0XFF002987),
    errorContainer: Color(0XFFB281E4),
    inversePrimary: Color(0XFF002987),
    inverseSurface: Color(0XFF002987),
    onBackground: Color(0XFFD9D9D9),
    onError: Color(0XFFD9D9D9),
    onErrorContainer: Color(0XFF002987),
    onInverseSurface: Color(0XFFD9D9D9),
    onPrimary: Color(0XFF002987),
    onPrimaryContainer: Color(0XFFD9D9D9),
    onSecondary: Color(0XFFD9D9D9),
    onSecondaryContainer: Color(0XFF002987),
    onSurface: Color(0XFFD9D9D9),
    onSurfaceVariant: Color(0XFF002987),
    onTertiary: Color(0XFFD9D9D9),
    onTertiaryContainer: Color(0XFF002987),
    outline: Color(0XFF002987),
    outlineVariant: Color(0XFF002987),
    primary: Color(0XFFA96AE8),
    primaryContainer: Color(0XFF002987),
    scrim: Color(0XFF002987),
    secondary: Color(0XFF002987),
    secondaryContainer: Color(0XFFB281E4),
    shadow: Color(0XFF002987),
    surface: Color(0XFF002987),
    surfaceTint: Color(0XFF002987),
    surfaceVariant: Color(0XFFB281E4),
    tertiary: Color(0XFF002987),
    tertiaryContainer: Color(0XFFB281E4),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
  // Black
  Color get black900 => Color(0XFF000000);
  // Blue
  Color get blue300 => Color(0XFF69AFDF);
  Color get blue400 => Color(0XFF3E93D4);
  // BlueGray
  Color get blueGray100 => Color(0XFFCECECE);
  Color get blueGray300 => Color(0XFFA3A3B5);
  Color get blueGray400 => Color(0XFF888888);
  // DeepPurple
  Color get deepPurple300 => Color(0XFF9B58DE);
  Color get deepPurple50 => Color(0XFFE9DEF8);
  Color get deepPurple5001 => Color(0XFFE8E3FF);
  // Gray
  Color get gray100 => Color(0XFFF7F0FD);
  Color get gray10001 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFE7E7E7);
  Color get gray400 => Color(0XFFB1B1B1);
  Color get gray40001 => Color(0XFFBDBDBD);
  Color get gray40002 => Color(0XFFBEBEBE);
  Color get gray40003 => Color(0XFFC6C6C6);
  Color get gray50 => Color(0xFFF8F8F8);
  Color get gray600 => Color(0XFF7C7C7C);
  // Grayc
  Color get gray8004c => Color(0X4C3C3C43);
  // Indigo
  Color get indigo400 => Color(0XFF646DB2);
  Color get indigo900 => Color(0XFF2A2E6D);
  Color get indigoA100 => Color(0XFF8C94FF);
  Color get indigoA700 => Color(0XFF1A2ADF);
  // LightBlue
  Color get lightBlue50 => Color(0XFFD3EFFF);
  // Pink
  Color get pink200 => Color(0XFFFF8CD7);
  Color get pink300 => Color(0XFFE75096);
  // Purple
  Color get purpleA100 => Color(0XFFDA8CFF);
  // Red
  Color get red600 => Color(0XFFF22D42);
  Color get red700 => Color(0XFFCD3232);
  Color get red70001 => Color(0XFFD83636);
  // Teal
  Color get teal200 => Color(0XFF75B4D9);
  // White
  Color get whiteA700 => Color(0xFFF8F8F8);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
