import 'package:flutter/material.dart';

class WSuccessAlert extends StatelessWidget{
  Color color;
  WSuccessAlert({super.key, this.color = Colors.green});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:  Card(
          color: Colors.white,
          elevation: 0.0,
          margin: const EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 10,
                  decoration:  BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),

                  ),
                ),
                 Expanded(
                    child: ListTile(
                      isThreeLine: true,
                      trailing: Icon(
                        Icons.check_circle_outline_outlined,
                        color: color,
                        size: 24,
                      ),
                      subtitle: const Text('You have managed to recruit enough freelancers. Review your active and inactive freelancers for more action if required'),
                      subtitleTextStyle: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )),
    );
  }
}