import 'package:dummy_ostello/components/atom/typography2.dart';
import 'package:flutter/material.dart';

class CardDataItem extends StatelessWidget {
  const CardDataItem({
    super.key,
    required this.value1,
    this.value2,
    this.underLine = false,
  });

  final String value1;
  final String? value2;
  final bool underLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TypoGraphy2(
            data: value1,
          ),
          TypoGraphy2(
            data: value2 ?? '',
            underLine: underLine,
          ),
        ],
      ),
    );
  }
}
