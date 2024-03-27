import 'package:flutter/material.dart';

class ProcessingPageview extends StatefulWidget {
  const ProcessingPageview({super.key});

  @override
  State<ProcessingPageview> createState() => _ProcessingPageviewState();
}

class _ProcessingPageviewState extends State<ProcessingPageview> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 500,
          width: 1000,
          color: Colors.amber,
        ),
        Container(
          height: 500,
          width: 1000,
          color: Colors.blue,
        ),
        Container(
          height: 500,
          width: 1000,
          color: Colors.orange,
        ),
      ],
    );
  }
}
