import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/resource/app_colors.dart';
import 'package:responsive_admin_panel_dashboard/widget/bar_graph.dart';
import 'package:responsive_admin_panel_dashboard/widget/line_chart.dart';

import '../resource/app_padding.dart';
import '../widget/pie_chart.dart';
import '../widget/responsive_layout.dart';

class Todo {
  String name;
  bool enable;
  Todo({this.enable = true, required this.name});
}

class PanelLeftScreen extends StatefulWidget {
  const PanelLeftScreen({super.key});

  @override
  State<PanelLeftScreen> createState() => _PanelLeftScreenState();
}

class _PanelLeftScreenState extends State<PanelLeftScreen> {
  final List<Todo> _todos = [
    Todo(name: "Purchase Paper", enable: true),
    Todo(name: "Refill the inventory of speakers", enable: true),
    Todo(name: "Hire someone", enable: true),
    Todo(name: "Maketing Strategy", enable: true),
    Todo(name: "Selling furniture", enable: true),
    Todo(name: "Finish the disclosure", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              color: AppColors.purpleLight,
              width: 50,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.purpleDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.P10 / 2,
                      top: AppPadding.P10 / 2,
                      right: AppPadding.P10 / 2),
                  child: Card(
                    color: AppColors.purpleLight,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: ListTile(
                        title: Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Jobs Stadistics",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        subtitle: Text(
                          "Total Jobs Completed",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Chip(
                          label: Text(
                            "4,500",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                LineChartCard(
                  title: 'Transaction History',
                ),
                //const LineChartSample2(),
                const PieChartSample2(),
                BarGraphCard(),
                // Padding(
                //     padding: const EdgeInsets.only(
                //         left: AppPadding.P10 / 2,
                //         top: AppPadding.P10 / 2,
                //         right: AppPadding.P10 / 2,
                //         bottom: AppPadding.P10),
                //     child: Card(
                //       color: AppColors.purpleLight,
                //       elevation: 3,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //       child: Column(
                //           children: List.generate(
                //               _todos.length,
                //               (index) => CheckboxListTile(
                //                   title: Text(
                //                     _todos[index].name,
                //                     style: const TextStyle(color: Colors.white),
                //                   ),
                //                   value: _todos[index].enable,
                //                   onChanged: (value) {
                //                     setState(() {
                //                       _todos[index].enable = value ?? true;
                //                     });
                //                   }))),
                //     ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
