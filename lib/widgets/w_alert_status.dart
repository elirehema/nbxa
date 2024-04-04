import 'package:flutter/material.dart';

class WStatusAlert extends StatelessWidget{
  Color color;
  WStatusAlert({super.key, required this.color});
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
                const Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.warning_amber_outlined,
                        color: Colors.orange,
                        size: 32,
                      ),
                      title: Text('Documents were not uploaded!', style: TextStyle(fontWeight: FontWeight.w500),),
                      subtitle: Text('Review your unpublished document'),
                    ))
              ],
            ),
          )),
    );
  }
}