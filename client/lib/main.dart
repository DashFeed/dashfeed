import 'package:dashfeed/widgets/dashfeed_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/dashfeed_app_bar.dart';

void main() {
  runApp(const Dashfeed());
}

class Dashfeed extends StatelessWidget {
  const Dashfeed({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashFeed',
      home: const Dashboard(title: 'DashFeed'),
      color: DashfeedColors.dashfeedPurple,
      theme: ThemeData(
        scaffoldBackgroundColor: DashfeedColors.background,
      ),
    );
  }

  RouteFactory? onGenerateRoute() {
    return null;
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          DashfeedAppBar(widget.title),
        ],
      ),
    );
  }
}
