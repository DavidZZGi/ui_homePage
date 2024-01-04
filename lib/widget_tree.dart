import 'package:flutter/material.dart';

import 'package:responsive_admin_panel_dashboard/screen/panel_center_screen.dart';

import 'screen/panel_left_screen.dart';
import 'screen/panel_right_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: SizedBox(),
        ),
        body: Row(
          children: [
            Expanded(child: PanelLeftScreen()),
            Expanded(child: PanelCenterScreen()),
            Expanded(child: PanelRightScreen()),
          ],
        ),
      ),
    );
  }
}
