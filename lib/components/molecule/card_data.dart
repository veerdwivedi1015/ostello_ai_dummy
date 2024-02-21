import 'package:dummy_ostello/components/atom/typography1.dart';
import 'package:dummy_ostello/utils/functions.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.cardHeader,
    this.icon,
    this.callback,
    this.widgets = const [],
  });

  final String cardHeader;
  final IconData? icon;
  final VoidCallback? callback;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Functions.responsiveWidth(context: context, percent: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Typography1(
                data: cardHeader,
                fontWeight: FontWeight.w600,
              ),
              IconButton(
                onPressed: () => callback?.call(),
                icon: Icon(
                  icon,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        if (widgets.isNotEmpty)
          Container(
            width: Functions.responsiveWidth(
              context: context,
              percent: 100,
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [...widgets],
            ),
          )
        else
          const SizedBox.shrink()
      ],
    );
  }
}
