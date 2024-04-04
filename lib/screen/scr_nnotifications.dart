import 'package:flutter/material.dart';
import 'package:nba/utils/util.dart';
import 'package:nba/widgets/w_notification.dart';

import '../utils/constants.dart';
import '../widgets/w_nnofication.dart';

class ScreenNewNotifications extends StatelessWidget{
  const ScreenNewNotifications({super.key});


  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Utils.backArrow(),
        title: const Text('Notifications'),
      ),
      body: Container(
          padding: const EdgeInsets.all(0.0),
          child: ListView.separated(
            itemCount: 25,
            separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey, height: 0.1,),
            itemBuilder: (BuildContext context, int index) {
              return WidgetNewNotification(action: index%3==0,);
            },
          )
      ),
    );
  }
}