import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nba/utils/colors.dart';
import 'package:nba/utils/index.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
class GrossAddScreen extends StatelessWidget {
  const GrossAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              flex: 0,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                        dense: true,
                        title: const Text('Daily G/A'),
                        subtitle: const Text('Daily Group Add '),
                        trailing: PopupMenuButton<int>(
                          padding: const EdgeInsets.all(0.0),
                          icon: const Icon(Icons.filter_list_outlined),
                          itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<int>>[

                            PopupMenuItem(
                              value: 2,
                              child: ListTile(
                                dense: true,
                                title:Text('menu.daily'.tr()),
                                leading: const Icon(Icons.calendar_today),
                              ),
                            ),
                            const PopupMenuDivider(height: 0.0,),
                            PopupMenuItem(
                              value: 3,
                              child: ListTile(
                                dense: true,
                                title: Text('menu.weekly'.tr()),
                                leading: const Icon(Icons.calendar_view_week),
                              ),
                            ),

                            const PopupMenuDivider( height: 0,),
                            PopupMenuItem(
                                value: 4,
                                child: ListTile(
                                  dense: true,
                                  title: Text('menu.monthly'.tr()),
                                  leading: const Icon(Icons.calendar_month),
                                )
                            )
                          ],
                          onSelected: (int value) {
                            switch (value) {

                            }
                          },
                        )
                    ),
                    SfCartesianChart(

                        primaryXAxis: const CategoryAxis(),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        palette: pallets,
                        enableAxisAnimation: true,
                        zoomPanBehavior: ZoomPanBehavior(enableDoubleTapZooming: true),
                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              legendIconType: LegendIconType.circle,

                              // Bind data source
                              dataSource: <SalesData>[
                                SalesData('Jan', 0.5),
                                SalesData('Feb', 8),
                                SalesData('Mar', 24),
                                SalesData('Apr', 19),
                                SalesData('May', 30),
                                SalesData('June', 42),
                                SalesData('July', 50),
                                SalesData('Aug', 60),
                                SalesData('Sep', 40),
                                SalesData('Oct', 55),
                                SalesData('Nov', 66)
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales
                          )
                        ]
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

