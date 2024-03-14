import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
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
            borderSide: BorderSide(color: Colors.grey.shade300),
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
              fontSize: 14, color: Colors.grey.shade600, fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
