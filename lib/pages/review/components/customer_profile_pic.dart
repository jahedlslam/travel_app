import 'package:flutter/material.dart';

class CustomerProfilePic extends StatelessWidget {
  final String profile;
  const CustomerProfilePic({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 75,
        height: 75,
        child: Image.network(
          profile,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
