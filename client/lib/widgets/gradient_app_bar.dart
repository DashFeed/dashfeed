import 'package:dashfeed/widgets/dashfeed_colors.dart';
import "package:flutter/material.dart";

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 50.0;

  const GradientAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [DashfeedColors.dashfeedPurple, DashfeedColors.darkGray],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
