import 'package:dashfeed/widgets/dashfeed_colors.dart';
import "package:flutter/material.dart";

class DashfeedAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 58.0;

  const DashfeedAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [DashfeedColors.dashfeedPurple, DashfeedColors.darkGray],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Align(
        alignment: const FractionalOffset(0.02, 0.5),
        child: Text(
          title,
          style: const TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
