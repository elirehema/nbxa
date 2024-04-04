import 'package:flutter/material.dart';
import 'package:nba/widgets/w_alert_action.dart';
import 'package:nba/widgets/w_alert_bolt.dart';
import 'package:nba/widgets/w_alert_error.dart';
import 'package:nba/widgets/w_alert_smooth.dart';
import 'package:nba/widgets/w_alert_status.dart';
import 'package:nba/widgets/w_alert_success.dart';

import '../utils/constants.dart';

class WidgetNotification extends StatelessWidget{
  final NotificationTypes type;
  const WidgetNotification({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch(type){
      case NotificationTypes.status:
        widget = WStatusAlert(color: Colors.orange);
      case NotificationTypes.action:
        widget = const WActionAlert();
      case NotificationTypes.bolt:
        widget = const WBoltAlert();
      case NotificationTypes.smooth:
        widget = const WSmoothAlert(Colors.deepOrangeAccent);
      case NotificationTypes.error:
       widget = WErrorAlert(color: Colors.red);
      case NotificationTypes.success:
        widget = WSuccessAlert();
    }
    return widget;
  }
}