import 'package:flutter_vanilla/flutter_vanilla.dart';
import 'package:flutter_vanilla/src/resources/colors/raw_colors.dart';

/// {@template colors}
/// A class that contains all the colors used in the Vanilla design system.
///
/// We recommend that you use the classes [BrandColors], [CoreColors],
/// [SemanticColors], [LinkColors] and [SyntaxColors] to access the colors.
/// Than use can use these colors values as constants.
///
/// Example:
/// ```dart
/// import 'package:flutter_vanilla/flutter_vanilla.dart';
///
/// // BAD
/// final primaryBadColor = Colors.brand.ubuntuOrange;
/// final successBadColor = Colors.semantic.positive;
///
/// // GOOD
/// const primaryGoodColor = BrandColors.ubuntuOrange;
/// const successGoodColor = SemanticColors.positive;
/// ```
///
/// {@endtemplate}
@immutable
abstract class Colors {
  /// transparent color
  static const transparent = Color(RawColors.transparent);

  /// {@macro colors}
  ///
  /// {@macro brand_colors}
  static const brand = BrandColors();

  /// {@macro colors}
  ///
  /// {@macro brand_colors}
  static const core = CoreColors();

  /// {@macro colors}
  ///
  /// {@macro brand_colors}
  static const semantic = SemanticColors();

  /// {@macro colors}
  ///
  /// {@macro brand_colors}
  static const link = LinkColors();

  /// {@macro colors}
  ///
  /// {@macro brand_colors}
  static const syntax = SyntaxColors();
}

/// {@template brand_colors}
/// A class that contains brand colors used in the Vanilla design system.
/// {@endtemplate}
@immutable
class BrandColors {
  /// {@macro brand_colors}
  const BrandColors();

  /// {@template brand_colors_ubuntu_orange}
  /// The primary color of the design system. </br>
  /// Hex value: `#e95420`.
  /// {@endtemplate}
  static const ubuntuOrange = Color(RawColors.ubuntuOrange);

  /// {@macro brand_colors_ubuntu_orange}
  Color get ubuntuOrangeColor => ubuntuOrange;

  /// {@template brand_colors_secondary_teal}
  /// The secondary color of the. </br>
  /// Hex value: `#0f95a1`.
  /// {@endtemplate}
  static const secondary = Color(RawColors.secondaryTeal);

  /// {@macro brand_colors_secondary_teal}
  Color get secondaryColor => secondary;

  /// {@template brand_colors_aubergine}
  /// The tertiary color of the design system. </br>
  /// Hex value: `#6d286c`.
  /// {@endtemplate}
  static const aubergine = Color(RawColors.aubergine);

  /// {@macro brand_colors_aubergine}
  Color get aubergineColor => aubergine;
}

/// {@template core_colors}
/// A class that contains core colors used in the Vanilla design system.
/// {@endtemplate}
@immutable
class CoreColors {
  /// {@macro core_colors}
  const CoreColors();

  /// {@template core_colors_black}
  /// The black color for the Vanilla design system. </br>
  /// Hex value: `#000000`.
  /// {@endtemplate}
  static const black = Color(RawColors.black);

  /// {@macro core_colors_black}
  Color get blackColor => black;

  /// {@template core_colors_x_dark}
  /// The extra dark color for the Vanilla design system. </br>
  /// Hex value: `#1a000000`.
  /// {@endtemplate}
  static const xDark = Color(RawColors.xDark);

  /// {@macro core_colors_x_dark}
  Color get xDarkColor => xDark;

  /// {@template core_colors_text}
  /// The text color for the Vanilla design system. </br>
  /// Hex value: `#000000`.
  /// {@endtemplate}
  static const text = Color(RawColors.text);

  /// {@macro core_colors_text}
  Color get textColor => text;

  /// {@template core_colors_mid_dark}
  /// The mid dark color for the Vanilla design system. </br>
  /// Hex value: `#666666`.
  /// {@endtemplate}
  static const midDark = Color(RawColors.midDark);

  /// {@macro core_colors_mid_dark}
  Color get midDarkColor => midDark;

  /// {@template core_colors_light_dark}
  /// The light dark color for the Vanilla design system. </br>
  /// Hex value: `#757575`.
  /// {@endtemplate}
  static const lightDark = Color(RawColors.lightDark);

  /// {@macro core_colors_light_dark}
  Color get lightDarkColor => lightDark;

  /// {@template core_colors_mid_light}
  /// The mid light color for the Vanilla design system. </br>
  /// Hex value: `#D9D9D9`.
  /// {@endtemplate}
  static const midLight = Color(RawColors.midLight);

  /// {@macro core_colors_mid_light}
  Color get midLightColor => midLight;

  /// {@template core_colors_mid_x_light}
  /// The light color for the Vanilla design system. </br>
  /// Hex value: `#E5E5E5`.
  /// {@endtemplate}
  static const midXLight = Color(RawColors.light);

  /// {@macro core_colors_mid_x_light}
  Color get midXLightColor => midXLight;

  /// {@template core_colors_light}
  /// The light color for the Vanilla design system. </br>
  /// Hex value: `#F7F7F7`.
  /// {@endtemplate}
  static const light = Color(RawColors.light);

  /// {@macro core_colors_light}
  Color get lightColor => light;

  /// {@template core_colors_x_light}
  /// The extra light color for the Vanilla design system. </br>
  /// Hex value: `#ffffff`.
  /// {@endtemplate}
  static const xLight = Color(RawColors.xLight);

  /// {@macro core_colors_x_light}
  Color get xLightColor => xLight;
}

/// {@template semantic_colors}
/// A class that contains all the semantic
/// colors used in the Vanilla design system.
/// {@endtemplate}
@immutable
class SemanticColors {
  /// {@macro semantic_colors}
  const SemanticColors();

  /// {@template semantic_colors_positive}
  /// The positive color for the Vanilla design system. </br>
  /// Hex value: `#0C8420`.
  /// {@endtemplate}
  static const positive = Color(RawColors.semanticPositive);

  /// {@macro semantic_colors_positive}
  Color get positiveColor => positive;

  /// {@template semantic_colors_positive_hover}
  /// The success-hover color for the Vanilla design system. </br>
  /// Hex value: `#095615`.
  /// {@endtemplate}
  static const positiveHover = Color(RawColors.semanticPositiveHover);

  /// {@macro semantic_colors_positive_hover}
  Color get positiveHoverColor => positiveHover;

  /// {@template semantic_colors_positive_light}
  /// The success-light color for the Vanilla design system. </br>
  /// Hex value: `#f3fff4`.
  /// {@endtemplate}
  static const positiveLight = Color(RawColors.semanticPositiveLight);

  /// {@macro semantic_colors_positive_light}
  Color get positiveLightColor => positiveLight;

  /// {@template semantic_colors_warning_contrast}
  /// The warning contrast3 color for the Vanilla design system. </br>
  /// Hex value: `#ec6c04`.
  /// {@endtemplate}
  static const warningContrast = Color(RawColors.semanticWarningContrast3);

  /// {@macro semantic_colors_warning_contrast}
  Color get warningContrastColor => warningContrast;

  /// {@template semantic_colors_caution}
  /// The caution color for the Vanilla design system. </br>
  /// Hex value: `#f99b11`.
  /// {@endtemplate}
  static const caution = Color(RawColors.semanticCaution);

  /// {@macro semantic_colors_caution}
  Color get cautionColor => caution;

  /// {@template semantic_colors_warning_light}
  /// The warning-light color for the Vanilla design system. </br>
  /// Hex value: `#fff9f0`.
  /// {@endtemplate}
  static const warningLight = Color(RawColors.semanticWarningLight);

  /// {@macro semantic_colors_warning_light}
  Color get warningLightColor => warningLight;

  /// {@template semantic_colors_negative}
  /// The negative color for the Vanilla design system. </br>
  /// Hex value: `#c7162b`.
  /// {@endtemplate}
  static const negative = Color(RawColors.semanticNegative);

  /// {@macro semantic_colors_negative}
  Color get negativeColor => negative;

  /// {@template semantic_colors_negative_hover}
  /// The negative-hover color for the Vanilla design system. </br>
  /// Hex value: `#b01326`.
  /// {@endtemplate}
  static const negativeHover = Color(RawColors.semanticNegativeHover);

  /// {@macro semantic_colors_negative_hover}
  Color get negativeHoverColor => negativeHover;

  /// {@template semantic_colors_negative_light}
  /// The negative-light color for the Vanilla design system. </br>
  /// Hex value: `#fff5f5`.
  /// {@endtemplate}
  static const negativeLight = Color(RawColors.semanticNegativeLight);

  /// {@macro semantic_colors_negative_light}
  Color get negativeLightColor => negativeLight;

  /// {@template semantic_colors_information}
  /// The information color for the Vanilla design system. </br>
  /// Hex value: `#24598f`.
  /// {@endtemplate}
  static const information = Color(RawColors.semanticInformation);

  /// {@macro semantic_colors_information}
  Color get informationColor => information;
}

/// {@template link_colors}
/// A class that contains link colors used in the Vanilla design system.
/// {@endtemplate}
@immutable
class LinkColors {
  /// {@macro link_colors}
  const LinkColors();

  /// {@template link_colors_default_light_theme}
  /// The default link color for the light theme. </br>
  /// Hex value: `#0066cc`.
  /// {@endtemplate}
  static const defaultLightTheme = Color(RawColors.linkDefaultLightTheme);

  /// {@macro link_colors_default_light_theme}
  Color get defaultLightThemeColor => defaultLightTheme;

  /// {@template link_colors_visited_light_theme}
  /// The visited link color for the light theme. </br>
  /// Hex value: `#7d42b8`.
  /// {@endtemplate}
  static const visitedLightTheme = Color(RawColors.linkVisitedLightTheme);

  /// {@macro link_colors_visited_light_theme}
  Color get visitedLightThemeColor => visitedLightTheme;

  /// {@template link_colors_default_dark_theme}
  /// The default link color for the dark theme. </br>
  /// Hex value: `#6699cc`.
  /// {@endtemplate}
  static const defaultDarkTheme = Color(RawColors.linkDefaultDarkTheme);

  /// {@macro link_colors_default_dark_theme}
  Color get defaultDarkThemeColor => defaultDarkTheme;

  /// {@template link_colors_visited_dark_theme}
  /// The visited link color for the dark theme. </br>
  /// Hex value: `#a679d2`.
  /// {@endtemplate}
  static const visitedDarkTheme = Color(RawColors.linkVisitedDarkTheme);

  /// {@macro link_colors_visited_dark_theme}
  Color get visitedDarkThemeColor => visitedDarkTheme;
}

/// {@template syntax_colors}
/// A class that contains syntax colors used in the Vanilla design system.
/// {@endtemplate}
@immutable
class SyntaxColors {
  /// {@macro syntax_colors}
  const SyntaxColors();

  /// {@template syntax_colors_green}
  /// The green color for syntax highlighting. </br>
  /// Hex value: `#0e811f`.
  /// {@endtemplate}
  static const green = Color(RawColors.syntaxHighlightingGreen);

  /// {@macro syntax_colors_green}
  Color get greenColor => green;

  /// {@template syntax_colors_yellow}
  /// The yellow color for syntax highlighting. </br>
  /// Hex value: `#a86500`.
  /// {@endtemplate}
  static const yellow = Color(RawColors.syntaxHighlightingYellow);

  /// {@macro syntax_colors_yellow}
  Color get yellowColor => yellow;

  /// {@template syntax_colors_red}
  /// The red color for syntax highlighting. </br>
  /// Hex value: `#dc3023`.
  /// {@endtemplate}
  static const red = Color(RawColors.syntaxHighlightingRed);

  /// {@macro syntax_colors_red}
  Color get redColor => red;

  /// {@template syntax_colors_aubergine}
  /// The aubergine color for syntax highlighting. </br>
  /// Hex value: `#77216f`.
  /// {@endtemplate}
  static const aubergine = Color(RawColors.syntaxHighlightingAubergine);

  /// {@macro syntax_colors_aubergine}
  Color get aubergineColor => aubergine;
}
