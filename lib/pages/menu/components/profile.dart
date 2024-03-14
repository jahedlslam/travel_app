import 'package:flutter/material.dart';
import 'package:travel_app/routes/app_routes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        shape: const BeveledRectangleBorder(),
        backgroundColor: Colors.black87,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 290,
                width: 375,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/icons/security.png",
                            height: 100,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Account security",
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 88,
                                width: 180,
                                child: Text(
                                  "One more step for your account not to be attacked. Have you installed the authentication method?",
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    color: Colors.grey.shade800,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 46,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          child: const Center(
                            child: Text(
                              "LATER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 46,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.securitySetting);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Center(
                            child: Text(
                              "SECURITY SETTING",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "SAVE",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: SizedBox(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey.shade800,
                  size: 30,
                ),
              ),
            ),
            const Positioned(
              top: 110,
              left: 30,
              child: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mulish',
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 190,
              left: 30,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.white60,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'CAPI Design',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.white60,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'agency@capi.design',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Phone number",
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.white60,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'your number',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Birthday",
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.white60,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Your Birthday',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontFamily: 'Mulish'),
                        suffixIcon: const Icon(Icons.calendar_month),
                        suffixIconColor: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 555,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  const Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.changingPassword);
                    },
                    child: SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Change your password",
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    color: Colors.grey.shade800,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.shade400,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Credit card management",
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Manage all your credit cards.",
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  color: Colors.grey.shade800,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade400,
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
