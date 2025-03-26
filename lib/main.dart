import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dash Board',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashBoardView(),
    );
  }
}
