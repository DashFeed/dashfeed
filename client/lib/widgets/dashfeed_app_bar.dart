import 'package:dashfeed/widgets/dashfeed_colors.dart';
import "package:flutter/material.dart";

class DashfeedAppBar extends StatelessWidget {
  final String title;
  final double barWidth = 80.0;

  const DashfeedAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusbarWidth = MediaQuery.of(context).padding.left;
    final double statusbarHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(left: statusbarWidth),
      width: statusbarWidth + barWidth,
      height: statusbarHeight,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                DashfeedColors.topDarkGrey,
                DashfeedColors.bottomDarkGrey
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          boxShadow: [
            BoxShadow(
                color: DashfeedColors.dashfeedPurple.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2))
          ]),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
