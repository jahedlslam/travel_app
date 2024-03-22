import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 10,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.secondaryGrayColor800,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
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
                      width: 5,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: AppColors.secondaryGrayColor800),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: 10,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.secondaryGrayColor800,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
