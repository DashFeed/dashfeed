import 'package:flutter/material.dart';

class DashfeedPanelGrid extends StatefulWidget {
  const DashfeedPanelGrid({Key? key}) : super(key: key);

  @override
  _DashfeedPanelGrid createState() => _DashfeedPanelGrid();
}

class _DashfeedPanelGrid extends State<DashfeedPanelGrid> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: offset.dx,
          top: offset.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                offset = Offset(
                    offset.dx + details.delta.dx, offset.dy + details.delta.dy);
              });
            },
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
