import 'package:flutter_vanilla/flutter_vanilla.dart';

class Scaffold extends StatelessWidget {
  const Scaffold({
    super.key,
    this.header,
    required this.body,
    this.footer,
  });

  final Widget body;
  final Widget? header;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.background;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        children: [
          if (header != null) header!,
          Expanded(
            child: body,
          ),
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
