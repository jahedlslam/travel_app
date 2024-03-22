import 'package:flutter/material.dart';
import 'package:travel_app/pages/timeline/components/timeline_page_1.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({super.key});

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  late PageController _pagecontroller;
  @override
  void initState() {
    _pagecontroller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      child: PageView(
        controller: _pagecontroller,
        children: const [
          TimelinePage1(),
          TimelinePage1(),
        ],
      ),
    );
  }
}
