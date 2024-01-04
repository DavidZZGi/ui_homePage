import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_dashboard/resource/app_colors.dart';

class TableTransaction extends StatelessWidget {
  const TableTransaction({super.key});

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
                'Top Contacts by Transactions',
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
              columnSpacing: 22,
              columns: const [
                DataColumn(
                    label: Text('Contact Name',
                        style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('Transaction Count',
                        style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('Contact Type',
                        style: TextStyle(color: Colors.white))),

                // Add other relevant columns here
              ],
              rows: [
                buildDataRow(name: 'Jane Doe', count: 11, type: '12'),

                buildDataRow(
                    name: 'David Zequeira', count: 12, type: 'Customer'),
                buildDataRow(name: 'Erick', count: 9, type: 'Supplier'),
                buildDataRow(name: 'Dave', count: 6, type: 'Client'),

                buildDataRow(name: 'Marcelo', count: 10, type: 'Supplier'),
                buildDataRow(name: 'Tim', count: 8, type: 'Client'),
                buildDataRow(name: 'Andrea', count: 22, type: 'Supplier'),
                buildDataRow(name: 'Chris', count: 13, type: 'Customer')

                // Add more rows as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(
      {required String name, required int count, required String type}) {
    return DataRow(
      cells: [
        DataCell(Text(name, style: const TextStyle(color: Colors.white))),
        DataCell(Text(count.toString(),
            style: const TextStyle(color: Colors.white))),
        DataCell(Text(type, style: const TextStyle(color: Colors.white))),
      ],
    );
  }
}
