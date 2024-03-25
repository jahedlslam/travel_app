import 'package:flutter/material.dart';

class YourProfile extends StatelessWidget {
  const YourProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 75,
        child: Image.network(
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
