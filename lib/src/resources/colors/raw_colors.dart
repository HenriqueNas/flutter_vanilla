import 'package:flutter_vanilla/flutter_vanilla.dart';

/// This raw colors values are based on the Ubuntu Design System at Figma. </br>
/// To see more about it, access: https://www.figma.com/file/H6MSsN3taoXXOJCPUbIImQ/Design-System-Library?node-id=803%3A9310&t=W0OglotYBvqZyM1e-1
@immutable
abstract class RawColors {
  /// HEX value:
  static const transparent = 0x00000000;

  /// HEX value: #000000
  static const black = 0xff000000;

  /// HEX value: #000000 @10%
  static const xDark = 0x1a000000;

  /// HEX value: #000000
  static const text = 0xff000000;

  /// HEX value: #666666
  static const midDark = 0xff666666;

  /// HEX value: #757575
  static const lightDark = 0xff757575;

  /// HEX value: #d9d9d9
  static const midLight = 0xffd9d9d9;

  /// HEX value: #e5e5e5
  static const midXLight = 0xffe5e5e5;

  /// HEX value: #f7f7f7
  static const light = 0xfff7f7f7;

  /// HEX value: #ffffff
  static const xLight = 0xffffffff;

  /// HEX value: #0066cc
  static const linkDefaultLightTheme = 0xff0066cc;

  /// HEX value: #7d42b8
  static const linkVisitedLightTheme = 0xff7d42b8;

  /// HEX value: #6699cc
  static const linkDefaultDarkTheme = 0xff6699cc;

  /// HEX value: #a679d2
  static const linkVisitedDarkTheme = 0xffa679d2;

  /// HEX value: #0066cc
  static const selectedHover = 0x120066cc;

  /// HEX value: #0066cc
  static const selected = 0x0d0066cc;

  /// HEX value: #000000
  static const lightThemeBackgroundActive = 0x14000000;

  /// HEX value: #000000
  static const lightThemeBackgroundHover = 0x0d000000;

  /// HEX value: #000000
  static const lightThemeHoverBg = 0x0d000000;

  /// HEX value: #e95420
  static const ubuntuOrange = 0xffe95420;

  /// HEX value: #0f95a1
  static const secondaryTeal = 0xff0f95a1;

  /// HEX value: #6d286c
  static const aubergine = 0xff6d286c;

  /// HEX value: #0c8420
  static const semanticPositive = 0xff0c8420;

  /// HEX value: #095615
  static const semanticPositiveHover = 0xff095615;

  /// HEX value: #f3fff4
  static const semanticPositiveLight = 0xfff3fff4;

  /// HEX value: #ec6c04
  static const semanticWarningContrast3 = 0xffec6c04;

  /// HEX value: #f99b11
  static const semanticCaution = 0xfff99b11;

  /// HEX value: #fff9f0
  static const semanticWarningLight = 0xfffff9f0;

  /// HEX value: #c7162b
  static const semanticNegative = 0xffc7162b;

  /// HEX value: #b01326
  static const semanticNegativeHover = 0xffb01326;

  /// HEX value: #fff5f5
  static const semanticNegativeLight = 0xfffff5f5;

  /// HEX value: #24598f
  static const semanticInformation = 0xff24598f;

  /// HEX value: #0e811f
  static const syntaxHighlightingGreen = 0xff0e811f;

  /// HEX value: #a86500
  static const syntaxHighlightingYellow = 0xffa86500;

  /// HEX value: #dc3023
  static const syntaxHighlightingRed = 0xffdc3023;

  /// HEX value: #77216f
  static const syntaxHighlightingAubergine = 0xff77216f;

  /// HEX value: #757575
  static const strokeBorderHighContrastLightTheme = 0xff757575;

  /// HEX value: #000000
  static const strokeBorderDefaultLightTheme = 0x33000000;

  /// HEX value: #000000
  static const strokeLightThemeActiveBg = 0x14000000;
}
