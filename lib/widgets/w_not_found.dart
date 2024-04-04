import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

class NothingFoundWarning extends StatelessWidget {
  final String? message;
  const NothingFoundWarning({super.key, this.message});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body:  Center(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.info_outline, size:52.0,color: theme.iconTheme.color),
            const SizedBox(height: 10,),
            Text( message != null ? 'info.$message'.tr(): 'No data found', style: theme.textTheme.headline3,)
          ],
        ),
      ),
    );
  }
}