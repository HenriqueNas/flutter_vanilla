import 'package:flutter_vanilla/flutter_vanilla.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _PrimaryButtonRow(),
          _Divider(),
          _PrimaryButtonRow(disabled: true),
          _Divider(),
          _NeutralButtonRow(),
          _Divider(),
          _NeutralButtonRow(disabled: true),
          _Divider(),
          _BaseButtonRow(),
          _Divider(),
          _BaseButtonRow(disabled: true),
          _Divider(),
          _NegativeButtonRow(),
          _Divider(),
          _NegativeButtonRow(disabled: true),
          _Divider(),
          _BrandButtonRow(),
          _Divider(),
          _BrandButtonRow(disabled: true),
        ],
      ),
    );
  }
}

class _Divider extends SizedBox {
  const _Divider({double size = 16}) : super.square(dimension: size);
}

class _PrimaryButtonRow extends StatelessWidget {
  const _PrimaryButtonRow({
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button.primary(
          label: 'Button',
          disable: disabled,
        ),
        Button.primary(
          label: 'Button',
          icon: VanillaIcons.plus,
          disable: disabled,
        ),
        Button.primary(
          label: 'Button',
          icon: VanillaIcons.chevronDown,
          iconPosition: ButtonIconPosition.right,
          disable: disabled,
        ),
      ],
    );
  }
}

class _NeutralButtonRow extends StatelessWidget {
  const _NeutralButtonRow({
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button.neutral(
          label: 'Button',
          disable: disabled,
        ),
        Button.neutral(
          label: 'Button',
          icon: VanillaIcons.plus,
          disable: disabled,
        ),
        Button.neutral(
          label: 'Button',
          icon: VanillaIcons.chevronDown,
          iconPosition: ButtonIconPosition.right,
          disable: disabled,
        ),
      ],
    );
  }
}

class _BaseButtonRow extends StatelessWidget {
  const _BaseButtonRow({
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button.base(
          label: 'Button',
          disable: disabled,
        ),
        Button.base(
          label: 'Button',
          icon: VanillaIcons.plus,
          disable: disabled,
        ),
        Button.base(
          label: 'Button',
          icon: VanillaIcons.chevronDown,
          iconPosition: ButtonIconPosition.right,
          disable: disabled,
        ),
      ],
    );
  }
}

class _NegativeButtonRow extends StatelessWidget {
  const _NegativeButtonRow({
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button.negative(
          label: 'Button',
          disable: disabled,
        ),
        Button.negative(
          label: 'Button',
          icon: VanillaIcons.plus,
          disable: disabled,
        ),
        Button.negative(
          label: 'Button',
          icon: VanillaIcons.chevronDown,
          iconPosition: ButtonIconPosition.right,
          disable: disabled,
        ),
      ],
    );
  }
}

class _BrandButtonRow extends StatelessWidget {
  const _BrandButtonRow({
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button.brand(
          label: 'Button',
          disable: disabled,
        ),
        Button.brand(
          label: 'Button',
          icon: VanillaIcons.plus,
          disable: disabled,
        ),
        Button.brand(
          label: 'Button',
          icon: VanillaIcons.chevronDown,
          iconPosition: ButtonIconPosition.right,
          disable: disabled,
        ),
      ],
    );
  }
}
