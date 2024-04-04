import 'package:flutter/material.dart';

class WErrorAlert extends StatelessWidget{
  Color color;
  WErrorAlert({super.key, required this.color});
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
                      leading: Icon(
                        Icons.info_outline,
                        color: color,
                        size: 32,
                      ),
                      title: const Text('Documents were not uploaded!', style: TextStyle(fontWeight: FontWeight.w500),),
                      subtitle: const Text('Review your unpublished document'),
                    ))
              ],
            ),
          )),
    );
  }
}