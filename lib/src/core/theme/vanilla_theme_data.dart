import 'package:flutter/foundation.dart';

import 'package:flutter_vanilla/flutter_vanilla.dart';

///
class VanillaThemeData {
  ///
  static const brightness = Brightness.light;
}

/// {@template theme_data}
/// Defines the configuration of the overall visual `Theme`` for a [VanillaApp]
/// or a widget subtree within the app.
///
/// The [VanillaApp] theme property can be used to configure the appearance
/// of the entire app. Widget subtrees within an app can override the app's
/// theme by including a `Theme` widget at the top of the subtree.
///
/// Widgets whose appearance should align with the overall theme can obtain the
/// current theme's configuration with `Theme.of`. Vanilla components typically
/// depend exclusively on the [colorScheme] and [textTheme]. These properties
/// are guaranteed to have non-null values.
///
/// The static `Theme.of` method finds the [ThemeData] value specified for the
/// nearest [BuildContext] ancestor. This lookup is inexpensive, essentially
/// just a single HashMap access. It can sometimes be a little confusing
/// because `Theme.of` can not see a `Theme` widget that is defined in the
/// current build method's context. To overcome that, create a new custom widget
/// for the subtree that appears below the new `Theme`, or insert a widget
/// that creates a new BuildContext, like [Builder].
/// {@endtemplate}
class ThemeData {
  /// {@macro theme_data}
  const ThemeData({
    this.mode = ThemeMode.system,
    this.colorScheme = const ColorScheme.light(),
    this.brightness = Brightness.light,
    this.iconTheme = const IconThemeData.fallback(),
    this.textTheme = const TextTheme(colorScheme: ColorScheme.light()),
    this.primaryColor,
  });

  /// {@macro theme_data}
  const ThemeData.fallback({
    this.mode = ThemeMode.system,
    this.colorScheme = const ColorScheme.light(),
    this.brightness = Brightness.light,
    this.iconTheme = const IconThemeData.fallback(),
    this.textTheme = const TextTheme(colorScheme: ColorScheme.light()),
    this.primaryColor,
  });

  /// {@macro theme_data}
  const ThemeData.raw({
    required this.mode,
    required this.textTheme,
    required this.colorScheme,
    required this.brightness,
    required this.iconTheme,
    this.primaryColor,
  });

  /// {@macro theme_data}
  ThemeData.light({
    this.iconTheme = const IconThemeData.fallback(),
  })  : mode = ThemeMode.light,
        brightness = Brightness.dark,
        primaryColor = const ColorScheme.light().primary,
        colorScheme = const ColorScheme.light(),
        textTheme = const TextTheme(colorScheme: ColorScheme.light());

  /// The brightness of the overall theme of the
  /// application for the [BuildContext] that is "under" the `Theme`.
  final Brightness brightness;

  /// The primary color of the theme. This color is used to
  /// accent elements of the application.
  final Color? primaryColor;

  /// The theme mode, which determines the color palette used for components.
  /// This property defaults to [ThemeMode.system], and must not be null.
  final ThemeMode mode;

  /// {@macro color_scheme}
  final ColorScheme colorScheme;

  /// Defines the size, font variations, color, opacity, and shadows of icons.
  ///
  /// Used by [IconTheme] to control those properties in a widget subtree.
  ///
  /// To obtain the current icon theme, use [IconTheme.of]. To convert an icon
  /// theme to a version with all the fields filled in, use
  /// [IconThemeData.fallback].
  final IconThemeData iconTheme;

  /// {@marco text_theme}
  final TextTheme textTheme;
}

/// Describes which theme will be used by [VanillaApp].
enum ThemeMode {
  /// Use either the light or dark theme based on what the user has selected in
  /// the system settings.
  system,

  /// Always use the light mode regardless of system preference.
  light,

  /// Always use the dark mode (if available) regardless of system preference.
  dark,
}
