import 'package:flutter/material.dart';

class IconTextComponent extends StatelessWidget {
  const IconTextComponent({
    super.key,
    required this.chips,
  });

  final List<Chip> chips;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: [...chips],
    );
  }
}
