import 'package:flutter_vanilla/flutter_vanilla.dart';

/// {@template button_base}
/// This class define the base of the button.
/// We do not recommend using this class directly.
/// Instead, use [Button] widget.
/// {@endtemplate}
class ButtonBase extends StatefulWidget {
  /// {@macro button_base}
  const ButtonBase({
    required this.props,
    required this.label,
    super.key,
  });

  /// {@macro button_props}
  final ButtonProps props;

  /// The label of the button.
  final String label;

  @override
  State<ButtonBase> createState() => _ButtonBaseState();
}

class _ButtonBaseState extends State<ButtonBase> {
  late ButtonState _state = widget.props.state;
  ButtonState get state => _state;
  set state(ButtonState value) => setState(() {
        if (!state.isDisabled) _state = value;
      });

  bool _isHover = false;
  bool get isHover => _isHover;
  set isHover(bool value) => setState(() {
        _isHover = value;
        state = value ? ButtonState.hover : ButtonState.idle;
      });

  ButtonActions get actions => widget.props.actions;
  ButtonDecoration get decoration => widget.props.decoration;

  Color get backgroundColor {
    final colors = decoration.backgroundColors;
    if (state.isDisabled) {
      return colors.disabledColor;
    }

    return isHover ? colors.hoverColor : colors.color;
  }

  Color get surfaceColor {
    final colors = decoration.surfaceColors;
    if (state.isDisabled) {
      return colors.disabledColor;
    }

    return isHover ? colors.hoverColor : colors.color;
  }

  Color? get borderColor {
    final colors = decoration.borderColors;
    if (state.isDisabled) {
      return colors?.disabledColor;
    }

    return isHover //
        ? colors?.hoverColor
        : colors?.color;
  }

  bool get hasLeftIcon =>
      decoration.icon != null &&
      decoration.iconPosition == ButtonIconPosition.left;

  bool get hasRightIcon =>
      decoration.icon != null &&
      decoration.iconPosition == ButtonIconPosition.right;

  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      decoration.icon,
      color: surfaceColor,
      size: 16,
    );

    return MouseRegion(
      onHover: (_) => isHover = true,
      onExit: (_) => isHover = false,
      child: GestureDetector(
        onTap: actions.onTap,
        onLongPress: actions.onLongPress,
        onDoubleTap: actions.onDoubleTap,
        onSecondaryTap: actions.onSecondaryTap,
        child: Opacity(
          opacity: state.isDisabled ? 0.4 : 1,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: borderColor ?? Colors.transparent),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (hasLeftIcon) icon,
                const SizedBox(width: 8),
                Text(
                  widget.label,
                  style: VanillaTextStyles.linkDefault.apply(
                    color: surfaceColor,
                  ),
                ),
                const SizedBox(width: 8),
                if (hasRightIcon) icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
