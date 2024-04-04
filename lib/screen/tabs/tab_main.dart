import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(
      this.month,
      this.firstSale,
      this.secondSale,
      this.thirdSale
      );

  final String month;
  final double firstSale;
  final double secondSale;
  final double thirdSale;
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}
class MainScreenState extends State<MainScreen> {
  bool showAlert = true;
  late TrackballBehavior _trackballBehavior;
  late List<ChartData> data;
   List<ChartData> hourlyData =  <ChartData>[
    ChartData('8AM', 1, 39, 60),
    ChartData('9AM', 9, 30, 55),
    ChartData('10AM', 11, 28, 48),
    ChartData('11AM', 12, 35, 45),
    ChartData('12AM', 13, 39, 42),
    ChartData('01PM', 18, 41, 40),
    ChartData('02PM', 24, 45, 37),
    ChartData('03PM', 23, 48, 33),
    ChartData('04PM', 19, 54, 33),
    ChartData('05PM', 31, 55, 30),
    ChartData('06PM', 39, 57, 29),
    ChartData('07PM', 50, 60, 25),
  ];

  final List<ChartData> monthData = <ChartData>[
    ChartData('Jan', 15, 39, 60),
    ChartData('Feb', 20, 30, 55),
    ChartData('Mar', 25, 28, 48),
    ChartData('Apr', 21, 35, 57),
    ChartData('May', 13, 39, 62),
    ChartData('Jun', 18, 41, 64),
    ChartData('Jul', 24, 45, 57),
    ChartData('Aug', 23, 48, 53),
    ChartData('Sep', 19, 54, 63),
    ChartData('Oct', 31, 55, 50),
    ChartData('Nov', 39, 57, 66),
    ChartData('Dec', 50, 60, 65),
  ];
  final List<ChartData> weekData = <ChartData>[
    ChartData('Mon', 15, 39, 60),
    ChartData('Tue', 20, 30, 55),
    ChartData('Wed', 25, 28, 48),
    ChartData('Thu', 21, 35, 57),
    ChartData('Fri', 13, 39, 62),
    ChartData('Sat', 18, 41, 64),
    ChartData('Sun', 24, 45, 57),
  ];



  @override
  void initState() {
    data =  hourlyData;
    _trackballBehavior = TrackballBehavior(
        enable: true,
        tooltipDisplayMode: TrackballDisplayMode.groupAllPoints
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: showAlert,
          child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.transparent)
          ),
          child:  const ListTile(
            dense: true,
            leading:  Icon(Icons.info, color: Colors.black),
            subtitle:  Text("Your Gross Add G/A is below the your monthly average.Increase your registration to increase your G/A. Thanks",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,),

          ),
        ),),
        Card(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [

              ListTile(
                  tileColor: theme.primaryColor,
                  dense: true,
                  title: const Text('Registration and G/A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  subtitle: const Text('Registration and Daily Gross Add\'s ',style: TextStyle(color: Colors.white)),
                  trailing: PopupMenuButton<int>(
                    color: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    icon: const Icon(Icons.filter_list_outlined, color: Colors.white,),
                    itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<int>>[
                      PopupMenuItem(
                        value: 1,
                        child: ListTile(
                          dense: true,
                          title:Text('menu.hourly'.tr()),
                          leading: const Icon(Icons.watch_later_outlined),
                        ),
                      ),
                      const PopupMenuDivider(height: 0.0,),
                      PopupMenuItem(
                        value: 2,
                        child: ListTile(
                          dense: true,
                          title: Text('menu.weekly'.tr()),
                          leading: const Icon(Icons.calendar_view_week),
                        ),
                      ),

                      const PopupMenuDivider( height: 0,),
                      PopupMenuItem(
                          value: 3,
                          child: ListTile(
                            dense: true,
                            title: Text('menu.monthly'.tr()),
                            leading: const Icon(Icons.calendar_month),
                          )
                      )
                    ],
                    onSelected: (int value) {

                      setState(() {
                        showAlert = !showAlert;
                      });
                      switch (value) {
                        case 1:
                          setState(() {
                            data = hourlyData;
                          });
                          break;
                        case 2:
                          setState(() {
                            data = weekData;
                          });
                          break;
                        case 3:
                          setState(() {
                            data = monthData;
                          });
                          break;
                      }
                    },
                  )
              ),
              _cartesianChart()
            ],
          ),

        )
      ],
    );
  }

  Widget _cartesianChart(){
    return SfCartesianChart(
        primaryXAxis: const CategoryAxis(),
        trackballBehavior: _trackballBehavior,
        series: <LineSeries<ChartData, String>>[
          LineSeries<ChartData, String>(
            dataSource: data,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Registrations',
            xValueMapper: (ChartData sales, _) => sales.month,
            yValueMapper: (ChartData sales, _) => sales.firstSale,
          ),
          LineSeries<ChartData, String>(
            dataSource: data,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Gross Add (GA)',
            xValueMapper: (ChartData sales, _) => sales.month,
            yValueMapper: (ChartData sales, _) => sales.secondSale,
          ),
          LineSeries<ChartData, String>(
            dataSource: data,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Activators',
            xValueMapper: (ChartData sales, _) => sales.month,
            yValueMapper: (ChartData sales, _) => sales.thirdSale,
          )
        ]
    );
  }
}
