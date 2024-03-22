import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: LayoutBuilder(
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
                  decoration:
                      BoxDecoration(color: AppColors.secondaryGrayColor800),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
