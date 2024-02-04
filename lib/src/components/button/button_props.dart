import 'package:flutter_vanilla/flutter_vanilla.dart';

/// {@template button_props}
/// This class define the properties used in [ButtonBase] widget
/// {@endtemplate}
class ButtonProps {
  /// {@macro button_props}
  const ButtonProps({
    required this.decoration,
    this.actions = const ButtonActions(),
    this.state = ButtonState.idle,
  });

  /// {@macro button_state}
  final ButtonState state;

  /// {@macro button_actions}
  final ButtonActions actions;

  /// {@macro button_decoration}
  final ButtonDecoration decoration;
}

/// {@template button_decoration}
/// This class define the decoration of the button
/// {@endtemplate}
class ButtonDecoration {
  /// {@macro button_decoration}
  const ButtonDecoration.raw({
    required this.backgroundColors,
    required this.surfaceColors,
    required this.borderColors,
    required this.icon,
    required this.iconPosition,
  });

  /// Primary button decoration, with syntax green colors
  /// {@macro button_decoration}
  const ButtonDecoration.primary({
    this.icon,
    this.iconPosition,
  })  : backgroundColors = const ButtonColorDecoration(
          color: SemanticColors.positive,
          disabledColor: SemanticColors.positive,
          hoverColor: SemanticColors.positiveHover,
        ),
        borderColors = null,
        surfaceColors = const ButtonColorDecoration.all(CoreColors.xLight);

  /// Neutral button decoration, with black and white colors
  /// {@macro button_decoration}
  const ButtonDecoration.neutral({
    this.icon,
    this.iconPosition,
  })  : backgroundColors = const ButtonColorDecoration(
          color: CoreColors.xLight,
          disabledColor: CoreColors.xLight,
          hoverColor: CoreColors.midXLight,
        ),
        borderColors = const ButtonColorDecoration(
          color: CoreColors.lightDark,
          disabledColor: CoreColors.lightDark,
          hoverColor: CoreColors.midDark,
        ),
        surfaceColors = const ButtonColorDecoration.all(CoreColors.text);

  /// Base button decoration, with no background color, only on Hover
  /// {@macro button_decoration}
  const ButtonDecoration.base({
    this.icon,
    this.iconPosition,
  })  : backgroundColors = const ButtonColorDecoration(
          color: Colors.transparent,
          disabledColor: Colors.transparent,
          hoverColor: CoreColors.light,
        ),
        borderColors = null,
        surfaceColors = const ButtonColorDecoration.all(CoreColors.text);

  /// Negative button decoration, with semantics negative (red) colors
  /// {@macro button_decoration}
  const ButtonDecoration.negative({
    this.icon,
    this.iconPosition,
  })  : backgroundColors = const ButtonColorDecoration(
          color: SemanticColors.negative,
          disabledColor: SemanticColors.negative,
          hoverColor: SemanticColors.negativeHover,
        ),
        borderColors = null,
        surfaceColors = const ButtonColorDecoration.all(CoreColors.xLight);

  /// Negative button decoration, with semantics negative (red) colors
  /// {@macro button_decoration}
  const ButtonDecoration.brand({
    this.icon,
    this.iconPosition,
  })  : backgroundColors = const ButtonColorDecoration(
          // these colors are not defined in the design system
          color: Color(0xFF333333),
          disabledColor: const Color(0xFF333333),
          hoverColor: const Color(0xFF262626),
        ),
        borderColors = null,
        surfaceColors = const ButtonColorDecoration.all(CoreColors.xLight);

  /// The colors for button container </br>
  /// {@macro button_color_decoration}
  final ButtonColorDecoration backgroundColors;

  /// The colors for label property of the button </br>
  /// {@macro button_color_decoration}
  final ButtonColorDecoration surfaceColors;

  /// The colors for border property of the button </br>
  /// {@macro button_color_decoration}
  final ButtonColorDecoration? borderColors;

  /// The icon of the button
  final IconData? icon;

  /// {@macro button_icon_position}
  final ButtonIconPosition? iconPosition;
}

/// {@template button_color_decoration}
/// This class define the colors for a property of the button
/// {@endtemplate}
class ButtonColorDecoration {
  /// {@macro button_color_decoration}
  const ButtonColorDecoration({
    required this.color,
    required this.disabledColor,
    required this.hoverColor,
  });

  /// {@macro button_color_decoration}
  ///
  /// This constructor is used when the disabled color and hover color
  /// are the same as the color.
  const ButtonColorDecoration.all(this.color)
      : disabledColor = color,
        hoverColor = color;

  /// The background color for the property
  final Color color;

  /// The disabled background color for the property
  final Color disabledColor;

  /// The hover background color for the property
  final Color hoverColor;
}

/// {@template button_actions}
/// This class define the actions of the button
/// {@endtemplate}
class ButtonActions {
  /// {@macro button_actions}
  const ButtonActions({
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.onSecondaryTap,
  });

  /// A tap with a primary button has occurred.
  /// This triggers when the tap gesture wins.
  final VoidCallback? onTap;

  /// A tap with a primary button has occurred at the same
  /// location twice in quick succession.
  /// This triggers when the tap gesture wins.
  final VoidCallback? onLongPress;

  /// A tap with a primary button has occurred at the same
  /// location twice in quick succession.
  /// This triggers when the tap gesture wins.
  final VoidCallback? onDoubleTap;

  /// A tap with a secondary button has occurred.
  /// This triggers when the tap gesture wins.
  /// This will not result in a context menu.
  final VoidCallback? onSecondaryTap;
}

/// {@template button_state}
/// This class define the state of the button </br>
/// Can be one of the following:
/// - [ButtonState.idle]
/// - [ButtonState.disabled]
/// - [ButtonState.hover]
/// {@endtemplate}
enum ButtonState {
  /// The default state of the button
  idle,

  /// The button is disabled
  disabled,

  /// The button is loading
  hover;

  /// Returns `true` if this state enum is [disabled]
  bool get isDisabled => this == ButtonState.disabled;

  /// Returns `true` if this state enum is [hover]
  bool get isHover => this == ButtonState.hover;

  /// Returns `true` if this state enum is [idle],
  /// which is the default state of the button
  bool get isIdle => this == ButtonState.idle;
}

/// {@template button_icon_position}
/// This class define the position of the icon in the button </br>
/// Can be one of the following:
/// - [ButtonIconPosition.left]
/// - [ButtonIconPosition.right]
/// {@endtemplate}
enum ButtonIconPosition {
  /// The icon is displayed on the left side of the button
  left,

  /// The icon is displayed on the right side of the button
  right;

  /// Returns `true` if this position enum is [left]
  bool get isLeft => this == ButtonIconPosition.left;

  /// Returns `true` if this position enum is [right]
  bool get isRight => this == ButtonIconPosition.right;
}

/// {@template button_icon}
/// This class define the icon of the button </br>
/// Can be one of the following:
///   - [VanillaIcons.plus]
///   - [VanillaIcons.chevronDown]
/// {@endtemplate}
enum ButtonIcon {
  /// The icon is a plus
  plus(VanillaIcons.plus),

  /// The icon is a chevron down
  chevronDown(VanillaIcons.chevronDown);

  /// {@macro button_icon}
  const ButtonIcon(this.value);

  /// The icon data
  final IconData value;
}
