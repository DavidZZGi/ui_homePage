import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/resource/app_colors.dart';

class BarGraphPermitStatus extends StatelessWidget {
  BarGraphPermitStatus({super.key});

  final List<BarGraphModel> data = [
    BarGraphModel(
        lable: "Permit Status",
        color: const Color.fromARGB(248, 252, 144, 72),
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 10),
          GraphModel(x: 2, y: 7),
        ]),
  ];

  final lable = ['Active', 'Expired', 'Pending'];
  final nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.purpleLight,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data[0].lable,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AspectRatio(
                aspectRatio: 1.5,
                child: Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: BarChart(
                          BarChartData(
                            barGroups: _chartGroups(
                                points: data[0].graph, color: data[0].color),
                            borderData: FlBorderData(border: const Border()),
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      lable[value.toInt()],
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      nums[value.toInt()].toString(),
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    return points
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  topRight: Radius.circular(3.0),
                ),
              )
            ]))
        .toList();
  }
}

class BarGraphModel {
  String lable;
  Color color;
  List<GraphModel> graph;

  BarGraphModel(
      {required this.lable, required this.color, required this.graph});
}

class GraphModel {
  final double x;
  final double y;

  GraphModel({required this.x, required this.y});
}
