import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/widget/table_widget.dart';
import 'package:responsive_admin_panel_dashboard/widget/vessel_pie_chart.dart';

import '../resource/app_colors.dart';
import '../resource/app_padding.dart';

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterScreen extends StatefulWidget {
  const PanelCenterScreen({super.key});

  @override
  State<PanelCenterScreen> createState() => _PanelCenterScreenState();
}

class _PanelCenterScreenState extends State<PanelCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          "Vassel Stadistics",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      subtitle: Text(
                        "Total Number of Vassel",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Chip(
                        label: Text(
                          "20,500",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )),
            ),
            const VasselTable(),
            const PieChartVassel(),
            //  BarChartSample2(),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: AppPadding.P10 / 2,
            //       top: AppPadding.P10,
            //       bottom: AppPadding.P10,
            //       right: AppPadding.P10 / 2),
            //   child: Card(
            //     color: AppColors.purpleLight,
            //     elevation: 3,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     child: Column(
            //       children: List.generate(
            //           _persons.length,
            //           (index) => ListTile(
            //                 leading: CircleAvatar(
            //                   radius: 15,
            //                   backgroundColor: _persons[index].color,
            //                   child: Text(
            //                     _persons[index].name.substring(0, 1),
            //                     style: const TextStyle(color: Colors.white),
            //                   ),
            //                 ),
            //                 title: Text(
            //                   _persons[index].name,
            //                   style: const TextStyle(color: Colors.white),
            //                 ),
            //                 trailing: IconButton(
            //                     onPressed: () {},
            //                     icon: const Icon(
            //                       Icons.message,
            //                       color: Colors.white,
            //                     )),
            //               )),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
