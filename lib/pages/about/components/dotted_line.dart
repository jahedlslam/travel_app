import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
            (index) => SizedBox(
              width: 8,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey.shade800),
              ),
            ),
          ),
        );
      },
    );
  }
}
