import 'package:flutter/material.dart';
import 'package:nba/utils/colors.dart';
import 'package:nba/utils/index.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          titleSpacing: 4,
          title: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: colorPrimary,
              border: Border.all(color: colorPrimary),
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: AssetImage('assets/images/vodacom.png'),
                  fit: BoxFit.contain
              ),
            ),
          ),
        ),
        body: Padding(
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
                      const ListTile(
                        dense: true,
                        title: Text('Daily G/A'),
                        subtitle: Text('Daily Group Add '),
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
        )
    );
  }
}

