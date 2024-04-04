import 'package:flutter/material.dart';

class SomethingWrongHasHappened extends StatelessWidget {
  const SomethingWrongHasHappened({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.cloud_off_outlined, size:42.0,color: Colors.redAccent),
          SizedBox(height: 10,),
          Text('Oops! \n Something wrong has happened. \n Please try again later  ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19.0, color: Colors.redAccent),)
        ],
      ),
    );
  }
}