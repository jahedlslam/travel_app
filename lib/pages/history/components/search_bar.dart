import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../../routes/app_routes.dart';

class HistorySearchBar extends StatelessWidget {
  const HistorySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.searchTypeResult);
          },
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryWhiteColor60,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.secondaryGrayColor),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search for tour",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontFamily: 'Mulish'),
                  ),
                  Icon(
                    Icons.search,
                    color: AppColors.secondaryGrayColor600,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
