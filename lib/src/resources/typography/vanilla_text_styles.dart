import 'package:flutter_vanilla/flutter_vanilla.dart';

/// Default font family for Vanilla design system
const String ubuntuFontFamily = 'Ubuntu';

/// {@template vanilla_text_styles}
/// Vanilla Text Styles
/// {@endtemplate}
abstract class VanillaTextStyles {
  /// xSmallDefault Text Style
  static const TextStyle xSmallDefault = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500, // medium
    height: 1.33, // 16px
    fontFamily: ubuntuFontFamily,
  );

  /// xSmallCapitalised Text Style
  static const TextStyle xSmallCapitalized = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    letterSpacing: 0.8, // 5%
    fontFamily: ubuntuFontFamily,
  );

  /// smallDefault Text Style
  static const TextStyle smallDefault = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400, // regular
    height: 1.43, // 20px
    fontFamily: ubuntuFontFamily,
  );

  /// smallCaps Text Style
  static const TextStyle smallCaps = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500, // medium
    height: 1.5, // 24px
    letterSpacing: 0.8, // 5%
    fontFamily: ubuntuFontFamily,
  );

  /// linkDefault Text Style
  static const TextStyle linkDefault = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// linkUnderlined Text Style
  static const TextStyle linkUnderlined = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300, // light
    height: 1.5, // 24px
    decoration: TextDecoration.underline,
    fontFamily: ubuntuFontFamily,
  );

  /// linkInverted Text Style
  static const TextStyle linkInverted = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pDefault Text Style
  static const TextStyle pDefault = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pStrong Text Style
  static const TextStyle pStrong = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700, // bold
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pItalic Text Style
  static const TextStyle pItalic = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular,
    fontStyle: FontStyle.italic,
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pTextFigures Text Style
  static const TextStyle pTextFigures = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pSuperscript Text Style
  static const TextStyle pSuperscript = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pSubscript Text Style
  static const TextStyle pSubscript = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// pDecorationUnderlined Text Style
  static const TextStyle pDecorationUnderlined = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    decoration: TextDecoration.underline,
    fontFamily: ubuntuFontFamily,
  );

  /// pDecorationStrikethrough Text Style
  static const TextStyle pDecorationStrikethrough = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    decoration: TextDecoration.lineThrough,
    fontFamily: ubuntuFontFamily,
  );

  /// h6Large Text Style
  static const TextStyle h6Large = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular,
    fontStyle: FontStyle.italic,
    height: 1.5, // 24px
    letterSpacing: 0.32, // 2%
    fontFamily: ubuntuFontFamily,
  );

  /// h5Large Text Style
  static const TextStyle h5Large = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500, // medium
    height: 1.5, // 24px
    fontFamily: ubuntuFontFamily,
  );

  /// h4Large Text Style
  static const TextStyle h4Large = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w300, // light
    height: 1.33, // 32px
    fontFamily: ubuntuFontFamily,
  );

  /// h3Large Text Style
  static const TextStyle h3Large = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500, // medium
    height: 1.33, // 32px
    fontFamily: ubuntuFontFamily,
  );

  /// h2Medium Text Style
  static const TextStyle h2Medium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w100, // thin
    height: 1.25, // 40px
    fontFamily: ubuntuFontFamily,
  );

  /// h2Large Text Style
  static const TextStyle h2Large = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w100, // thin
    height: 1.2, // 48px
    fontFamily: ubuntuFontFamily,
  );

  /// h1Medium Text Style
  static const TextStyle h1Medium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500, // medium
    height: 1.25, // 40px
    fontFamily: ubuntuFontFamily,
  );

  /// h1Large Text Style
  static const TextStyle h1Large = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w100, // thin
    height: 1.2, // 48px
    fontFamily: ubuntuFontFamily,
  );

  /// displayHeadingLarge Text Style
  static const TextStyle displayHeadingLarge = TextStyle(
    fontSize: 80,
    fontWeight: FontWeight.w400, // regular
    height: 1.1, // 88px
    fontFamily: ubuntuFontFamily,
  );

  /// displayHeadingMedium Text Style
  static const TextStyle displayHeadingMedium = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400, // regular
    height: 1.13, // 72px
    fontFamily: ubuntuFontFamily,
  );

  /// miscTableHeading Text Style
  static const TextStyle miscTableHeading = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500, // medium
    height: 1.33, // 16px
    letterSpacing: 0.84, // 7%
    fontFamily: ubuntuFontFamily,
  );

  /// miscMono Text Style
  static const TextStyle miscMono = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
    fontFamily: 'Ubuntu Mono',
  );
}
