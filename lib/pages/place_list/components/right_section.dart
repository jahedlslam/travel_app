import 'package:flutter/material.dart';
import '../../../models/placelist_model.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
    required this.data,
  });

  final PlaceListModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Container(
              width: 66,
              height: 18,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(5)),
                  color: data.color),
              child: Center(
                child: Text(
                  data.category!,
                  style: TextStyle(
                      fontSize: 12,
                      color: data.fontColor,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, bottom: 15),
          child: Column(
            children: [
              Text(
                "\$${data.totalmoney}",
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mulish',
                    fontSize: 13),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "\$${data.discountMoney}",
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Mulish',
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
