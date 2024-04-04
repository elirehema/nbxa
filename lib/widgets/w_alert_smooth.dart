import 'package:flutter/material.dart';

class WSmoothAlert extends StatelessWidget{
  final Color color;
  const WSmoothAlert(this.color,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(5.0),
      decoration:  BoxDecoration(
          color: color.withOpacity(0.05),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border:  Border.all(color: color, width: 0.6)
      ),
      child:  ListTile(
        isThreeLine: true,
        dense: true,
        leading: Icon(Icons.info_outline, color: color,),
        trailing: Icon(Icons.close, color: color,),
        minLeadingWidth: 0,
        title: const Text('Your Daily G/A is is alerting',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        subtitle: const Text('Your daily G/A progress is not doing fine. Kindly check an take some actions. Thanks'),
      ),
    );
  }
}