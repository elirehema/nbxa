import 'package:flutter/material.dart';
import 'package:nba/utils/util.dart';
import 'package:nba/widgets/w_notification.dart';

import '../utils/constants.dart';

class ScreenNotifications extends StatelessWidget{
  const ScreenNotifications({super.key});


  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<NotificationTypes> types = [
      NotificationTypes.status,NotificationTypes.action,NotificationTypes.success,NotificationTypes.error,
      NotificationTypes.smooth,NotificationTypes.status,NotificationTypes.bolt,];
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Utils.backArrow(),
        title: const Text('Notifications'),
      ),
      body: Container(
    padding: const EdgeInsets.all(10.0),
    child: ListView.separated(
      itemCount: types.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent, height: 10,),
      itemBuilder: (BuildContext context, int index) {
        NotificationTypes type = types[index];
        return WidgetNotification(type: type);
      },
    )
      ),
    );
  }
}