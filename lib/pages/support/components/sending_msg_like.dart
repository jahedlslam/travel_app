import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class SendingMsgLike extends StatelessWidget {
  const SendingMsgLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.secondaryGrayColor200),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Is this service still available?",
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.secondaryGrayColor200),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Direct support location",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.secondaryGrayColor200),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Service prices",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
