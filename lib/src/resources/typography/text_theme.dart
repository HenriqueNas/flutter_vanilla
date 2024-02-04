import 'package:flutter_vanilla/flutter_vanilla.dart';

/// {@template text_theme}
///
/// {@endtemplate}
class TextTheme {
  ///
  const TextTheme({
    required this.colorScheme,
  });

  /// {@macro color_scheme}
  final ColorScheme colorScheme;

  ///
  TextStyle get diaplay => VanillaTextStyles.displayHeadingMedium.apply(
        color: colorScheme.onBackground,
      );

  ///
  TextStyle get titleLarge => VanillaTextStyles.h1Medium.apply(
        color: colorScheme.onBackground,
      );

  ///
  TextStyle get titleMedium => VanillaTextStyles.h2Medium.apply(
        color: colorScheme.onBackground,
      );

  ///
  TextStyle get titleSmall => VanillaTextStyles.h3Large.apply(
        color: colorScheme.onBackground,
      );

  ///
  TextStyle get bodyLarge => VanillaTextStyles.h4Large.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get body => VanillaTextStyles.h5Large.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get label => VanillaTextStyles.smallDefault.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get link => VanillaTextStyles.linkDefault.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get subtitle => VanillaTextStyles.pDefault.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get alternative => VanillaTextStyles.miscTableHeading.apply(
        color: colorScheme.onSurface,
      );

  ///
  TextStyle get alternative2 => VanillaTextStyles.miscMono.apply(
        color: colorScheme.onSurface,
      );
}

/// Apply common variants for [TextStyle]s.
extension Variants on TextStyle {
  ///
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}
