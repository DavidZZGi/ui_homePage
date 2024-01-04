import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/resource/app_colors.dart';

class VasselTable extends StatelessWidget {
  const VasselTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.purpleLight,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                'Top Vessels by Transactions',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              dataTextStyle: const TextStyle(
                fontSize: 12,
              ),
              border: TableBorder.all(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(18))),
              columnSpacing: 15,
              columns: const [
                DataColumn(
                    label: Text('Vessel Name',
                        style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('Transaction Count',
                        style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('Gross Register Tons',
                        style: TextStyle(color: Colors.white))),

                // Add other relevant columns here
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Ocean Voyager',
                      style: TextStyle(color: Colors.white))),
                  DataCell(Text('50', style: TextStyle(color: Colors.white))),
                  DataCell(Text('1200', style: TextStyle(color: Colors.white))),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  DataCell(Text('Harbor Explorer',
                      style: TextStyle(color: Colors.white))),
                  DataCell(Text('45', style: TextStyle(color: Colors.white))),
                  DataCell(Text('950', style: TextStyle(color: Colors.white))),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  DataCell(Text('Sea Guardian',
                      style: TextStyle(color: Colors.white))),
                  DataCell(Text('45', style: TextStyle(color: Colors.white))),
                  DataCell(Text('950', style: TextStyle(color: Colors.white))),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  DataCell(Text('Coastal Pioneer',
                      style: TextStyle(color: Colors.white))),
                  DataCell(Text('45', style: TextStyle(color: Colors.white))),
                  DataCell(Text('950', style: TextStyle(color: Colors.white))),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  DataCell(Text('Nautical Majesty',
                      style: TextStyle(color: Colors.white))),
                  DataCell(Text('45', style: TextStyle(color: Colors.white))),
                  DataCell(Text('950', style: TextStyle(color: Colors.white))),

                  // Add other relevant cells here
                ]),
                // Add more rows as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
