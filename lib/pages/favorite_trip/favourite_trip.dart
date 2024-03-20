import 'package:flutter/material.dart';
import 'package:travel_app/pages/favorite_trip/components/favorite_trip_search_field.dart';
import '../../constants/app_color.dart';
import '../../models/tirp_list_model.dart';
import '../place_detail_2/components/trip_list.dart';

class FavoriteTrip extends StatelessWidget {
  const FavoriteTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "CREATE A TRIP LIST",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: 1200,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.secondaryGrayColor800,
                      size: 30,
                    ),
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 30,
                  child: Text(
                    "Favorite trip",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  top: 170,
                  left: 30,
                  right: 30,
                  child: FavoritetripSearchfield(),
                ),
                Positioned(
                  top: 240,
                  left: 25,
                  right: 25,
                  child: SizedBox(
                    width: double.infinity,
                    height: 1000,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tripList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TripList(data: tripList[index]),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
