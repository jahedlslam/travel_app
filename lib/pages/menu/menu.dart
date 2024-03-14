import 'package:flutter/material.dart';
import 'package:travel_app/routes/app_routes.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;

  final List<String> categories = [
    'Profile',
    'History',
    'Notification',
    'Favorite Trip',
    'About',
    'Help',
    'Setting',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            right: 15,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: SizedBox(
              height: 460,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.profile);
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Text(
                        categories[0],
                        style: TextStyle(
                          color: 0 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.history);
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Text(
                        categories[1],
                        style: TextStyle(
                          color: 1 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.notifications);
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[2],
                            style: TextStyle(
                              color: 2 == selectedIndex
                                  ? Colors.black
                                  : Colors.grey.shade600,
                              fontFamily: 'Mulish',
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.favoriteTrip);
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      child: Text(
                        categories[3],
                        style: TextStyle(
                          color: 3 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.about);
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                      child: Text(
                        categories[4],
                        style: TextStyle(
                          color: 4 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.help);
                        setState(() {
                          selectedIndex = 5;
                        });
                      },
                      child: Text(
                        categories[5],
                        style: TextStyle(
                          color: 5 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.setting);
                        setState(() {
                          selectedIndex = 6;
                        });
                      },
                      child: Text(
                        categories[6],
                        style: TextStyle(
                          color: 6 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.logout);
                        setState(() {
                          selectedIndex = 7;
                        });
                      },
                      child: Text(
                        categories[7],
                        style: TextStyle(
                          color: 7 == selectedIndex
                              ? Colors.black
                              : Colors.grey.shade600,
                          fontFamily: 'Mulish',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ListView.builder(
//                 itemCount: categories.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(
//                         () {
//                           selectedIndex = index;
//                         },
//                       );
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                         bottom: 15.0,
//                       ),
//                       child: Text(
//                         categories[index],
//                         style: TextStyle(
//                           color: index == selectedIndex
//                               ? Colors.black
//                               : Colors.grey.shade500,
//                           fontFamily: 'Mulish',
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),