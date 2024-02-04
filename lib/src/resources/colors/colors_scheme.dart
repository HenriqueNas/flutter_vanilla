import 'dart:ui';

import 'package:flutter_vanilla/flutter_vanilla.dart';

/// {@template color_scheme}
/// A set of thirteen colors that can be used to configure the
/// color properties of most components.
///
/// A color scheme is used to define the colors used in a theme. Use
/// [ThemeData.colorScheme] to specify the colors of a [ThemeData].
///
/// {@endtemplate}
class ColorScheme {
  /// Create a ColorScheme instance from the given colors.
  ///
  /// We recommend that you use one of the named constructors that
  /// specify one of the standard color schemes via the
  /// [ColorScheme.light] or [ColorScheme.dark].
  ///
  /// For the color parameters that are nullable, it is still recommended
  /// that applications provide values for them. They are only nullable due
  /// to backwards compatibility concerns.
  ///
  /// If a color is not provided, the closest fallback color from the given
  /// colors will be used for it.
  ///
  /// * [primary]
  /// * [onPrimary]
  /// * [secondary]
  /// * [onSecondary]
  /// * [error]
  /// * [onError]
  /// * [background]
  /// * [onBackground]
  /// * [surface]
  /// * [onSurface]
  /// * [success]
  /// * [onSuccess]
  /// * [warning]
  /// * [info]
  ///
  /// {@macro color_scheme}
  const ColorScheme.raw({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.onSurface,
    required this.background,
    required this.onBackground,
    required this.error,
    required this.onError,
    required this.success,
    required this.onSuccess,
    Color? tertiary,
    Color? onTertiary,
    this.warning,
    this.info,
  })  : _tertiary = tertiary,
        _onTertiary = onTertiary;

  /// Create a light ColorScheme,
  /// based on the Vanilla design guidelines.
  ///
  /// {@macro color_scheme}
  const ColorScheme.light()
      : brightness = Brightness.light,
        primary = BrandColors.ubuntuOrange,
        onPrimary = CoreColors.text,
        secondary = BrandColors.secondary,
        onSecondary = CoreColors.xDark,
        _tertiary = BrandColors.aubergine,
        _onTertiary = CoreColors.xLight,
        surface = CoreColors.midLight,
        onSurface = CoreColors.text,
        background = CoreColors.xLight,
        onBackground = CoreColors.text,
        error = SemanticColors.negative,
        onError = CoreColors.xLight,
        success = SemanticColors.positive,
        onSuccess = CoreColors.xLight,
        warning = SemanticColors.warningContrast,
        info = SemanticColors.information;

  /// Create a dark color scheme,
  /// based on the Vanilla design guidelines.
  ///
  /// {@macro color_scheme}
  const ColorScheme.dark()
      : brightness = Brightness.dark,
        primary = BrandColors.ubuntuOrange,
        onPrimary = CoreColors.xLight,
        secondary = BrandColors.secondary,
        onSecondary = CoreColors.xLight,
        _tertiary = BrandColors.aubergine,
        _onTertiary = CoreColors.xLight,
        surface = CoreColors.midDark,
        onSurface = CoreColors.xLight,
        background = CoreColors.black,
        onBackground = CoreColors.midXLight,
        error = SemanticColors.negativeLight,
        onError = CoreColors.text,
        success = SemanticColors.positiveLight,
        onSuccess = CoreColors.text,
        warning = SemanticColors.warningLight,
        info = SemanticColors.information;

  /// The overall brightness of this color scheme.
  final Brightness brightness;

  /// The color displayed most frequently across
  /// your app’s screens and components.
  final Color primary;

  /// A color that's clearly legible when drawn on [primary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [primary] and [onPrimary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onPrimary;

  /// An accent color used for less prominent components in the UI, such as
  /// filter chips, while expanding the opportunity for color expression.
  final Color secondary;

  /// A color that's clearly legible when drawn on [secondary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [secondary] and [onSecondary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSecondary;

  final Color? _tertiary;

  /// A color used as a contrasting accent that can balance [primary]
  /// and [secondary] colors or bring heightened attention to an element,
  /// such as an input field.
  Color get tertiary => _tertiary ?? secondary;

  final Color? _onTertiary;

  /// A color that's clearly legible when drawn on [tertiary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [tertiary] and [onTertiary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onTertiary => _onTertiary ?? onSecondary;

  /// A color that typically appears behind scrollable content.
  final Color background;

  /// A color that's clearly legible when drawn on [background].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [background] and [onBackground] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onBackground;

  /// The background color for widgets like `Card`, `Dialog` and others.
  final Color surface;

  /// A color that's clearly legible when drawn on [surface].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [surface] and [onSurface] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSurface;

  /// The color to use for input validation errors, e.g. for
  /// ˜InputDecoration.errorText`.
  final Color error;

  /// A color that's clearly legible when drawn on [error].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [error] and [onError] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onError;

  /// The color to use for success messages, e.g. for
  /// ˜InputDecoration.successText`.
  final Color success;

  /// A color that's clearly legible when drawn on [success].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [success] and [onSuccess] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSuccess;

  /// The color to use for warning messages, e.g. for
  /// ˜InputDecoration.warningText`.
  final Color? warning;

  /// The color to use for info messages, e.g. for
  /// ˜InputDecoration.infoText`.
  final Color? info;
}
