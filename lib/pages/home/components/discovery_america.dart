import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/components/place_list.dart';
import '../../../models/placelist_model.dart';

class DiscoveryAmerica extends StatefulWidget {
  const DiscoveryAmerica({super.key});

  @override
  State<DiscoveryAmerica> createState() => _DiscoveryAmericaState();
}

class _DiscoveryAmericaState extends State<DiscoveryAmerica> {
  List<String> tabs = [
    "Suggest",
    "New",
  ];
  int current = 0;
  double changePositionedofLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 100;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 60;
      case 1:
        return 60;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 255,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1501466044931-62695aada8e9?q=80&w=1387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: const [0.1, 0.5],
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.2),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    "America",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Mulish',
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            fillColor: Colors.white60,
                            filled: true,
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search_outlined,
                              size: 20,
                              color: Colors.grey.shade600,
                            ),
                            hintText: 'Search for place',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                fontFamily: 'Mulish'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black26, blurRadius: 5)
                              ]),
                          child: const Icon(
                            Icons.sort_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC.",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14,
                          fontFamily: 'Mulish'),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.height * 0.05,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              left: 0,
                              child: SizedBox(
                                width: size.width,
                                height: size.height * 0.04,
                                child: ListView.builder(
                                  itemCount: tabs.length,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          current = index;
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: index == 0 ? 20 : 22,
                                          top: 2,
                                        ),
                                        child: Text(
                                          tabs[index],
                                          style: TextStyle(
                                              color: current == index
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize:
                                                  current == index ? 25 : 22,
                                              fontWeight: current == index
                                                  ? FontWeight.w800
                                                  : FontWeight.w600),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              left: changePositionedofLine(),
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 800),
                              bottom: 0,
                              child: AnimatedContainer(
                                curve: Curves.fastLinearToSlowEaseIn,
                                margin: const EdgeInsets.only(left: 20),
                                duration: const Duration(milliseconds: 800),
                                width: changeContainerWidth(),
                                height: size.height * 0.005,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: //Text("${tabs[current]} tab content"),
                            Expanded(
                          child: ListView.builder(
                            itemCount: placeList.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: PlaceList(data: placeList[index]),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 280, bottom: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "VIEW ALL-",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
