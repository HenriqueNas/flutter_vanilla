import 'package:flutter_vanilla/flutter_vanilla.dart';

/// {@template button}
/// This class define the button.
///
/// Example:
/// ```dart
/// Button.primary(
///  icon: 'icon',
///  iconPosition: ButtonIconPosition.left,
///  disable: false,
/// );
/// ```
/// {@endtemplate}
class Button extends ButtonBase {
  /// This is the raw constructor of the [Button].
  /// We recommend using the others constructors, like [Button.primary].
  ///
  /// With this constructor you can define the [ButtonState]
  /// and the [ButtonIconPosition] directly.
  ///
  /// Example:
  /// ButtonA
  /// ```dart
  ///   Button(
  ///     props: ButtonProps(
  /// actions: actions,
  ///
  ///       state: ButtonState.disabled,
  ///       iconPosition: ButtonIconPosition.left,
  ///     ),
  ///     actions: ButtonActions(
  ///       onTap: () => print('onTap'),
  ///       onLongPress: () => print('onLongPress'),
  ///     ),
  ///   );
  /// ```
  /// {@macro button}
  const Button({
    required super.label,
    required super.props,
    super.key,
  });

  /// Primary [Button] with the syntax green colors
  Button.primary({
    required super.label,
    bool disable = false,
    IconData? icon,
    ButtonIconPosition iconPosition = ButtonIconPosition.left,
    ButtonActions actions = const ButtonActions(),
    super.key,
  }) : super(
          props: ButtonProps(
            actions: actions,
            state: disable ? ButtonState.disabled : ButtonState.idle,
            decoration: ButtonDecoration.primary(
              icon: icon,
              iconPosition: iconPosition,
            ),
          ),
        );

  /// Neutral (default) [Button] with black and white colors
  Button.neutral({
    required super.label,
    bool disable = false,
    IconData? icon,
    ButtonIconPosition iconPosition = ButtonIconPosition.left,
    ButtonActions actions = const ButtonActions(),
    super.key,
  }) : super(
          props: ButtonProps(
            actions: actions,
            state: disable ? ButtonState.disabled : ButtonState.idle,
            decoration: ButtonDecoration.neutral(
              icon: icon,
              iconPosition: iconPosition,
            ),
          ),
        );

  /// Base [Button] without background and border colors (text only)
  Button.base({
    required super.label,
    bool disable = false,
    IconData? icon,
    ButtonIconPosition iconPosition = ButtonIconPosition.left,
    ButtonActions actions = const ButtonActions(),
    super.key,
  }) : super(
          props: ButtonProps(
            actions: actions,
            state: disable ? ButtonState.disabled : ButtonState.idle,
            decoration: ButtonDecoration.base(
              icon: icon,
              iconPosition: iconPosition,
            ),
          ),
        );

  /// Negative button decoration, with semantics negative (red) colors
  Button.negative({
    required super.label,
    bool disable = false,
    IconData? icon,
    ButtonIconPosition iconPosition = ButtonIconPosition.left,
    ButtonActions actions = const ButtonActions(),
    super.key,
  }) : super(
          props: ButtonProps(
            actions: actions,
            state: disable ? ButtonState.disabled : ButtonState.idle,
            decoration: ButtonDecoration.negative(
              icon: icon,
              iconPosition: iconPosition,
            ),
          ),
        );

  /// Negative button decoration, with dark colors
  Button.brand({
    required super.label,
    bool disable = false,
    IconData? icon,
    ButtonIconPosition iconPosition = ButtonIconPosition.left,
    ButtonActions actions = const ButtonActions(),
    super.key,
  }) : super(
          props: ButtonProps(
            actions: actions,
            state: disable ? ButtonState.disabled : ButtonState.idle,
            decoration: ButtonDecoration.brand(
              icon: icon,
              iconPosition: iconPosition,
            ),
          ),
        );
}
