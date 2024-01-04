import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/widget/bar_chart_permit_status.dart';
import 'package:responsive_admin_panel_dashboard/widget/table_transaction_contract.dart';
import '../resource/app_colors.dart';
import '../resource/app_padding.dart';
import '../widget/charts.dart';

class Product {
  String name;
  bool enable;
  Product({this.enable = true, required this.name});
}

class PanelRightScreen extends StatefulWidget {
  const PanelRightScreen({super.key});

  @override
  State<PanelRightScreen> createState() => _PanelRightScreenState();
}

class _PanelRightScreenState extends State<PanelRightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                      "General Stadistics",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  subtitle: Text(
                    "Total Revenue",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Chip(
                    label: Text(
                      r"$460,450",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const LineChartSample1(),
          BarGraphPermitStatus(),
          const TableTransaction(),
          // Padding(
          //   padding: const EdgeInsets.only(
          //       left: AppPadding.P10 / 2,
          //       top: AppPadding.P10 / 2,
          //       right: AppPadding.P10 / 2,
          //       bottom: AppPadding.P10),
          //   child: Card(
          //     color: AppColors.purpleLight,
          //     elevation: 3,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     child: Column(
          //         children: List.generate(
          //             _products.length,
          //             (index) => SwitchListTile.adaptive(
          //                   title: Text(
          //                     _products[index].name,
          //                     style: const TextStyle(color: Colors.white),
          //                   ),
          //                   value: _products[index].enable,
          //                   onChanged: (newValue) {
          //                     setState(() {
          //                       _products[index].enable = newValue;
          //                     });
          //                   },
          //                 ))),
          //   ),
          // )
        ]),
      ),
    );
  }
}
