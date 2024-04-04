import 'package:flutter/material.dart';

import '../scr_ga.dart';

class TabHomeScreen extends StatelessWidget {
  const TabHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double borderRadius = 7.0;
    return  SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:  ElevatedButton(
                      onPressed: null,
                      style:  ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.white),
                          backgroundColor: const MaterialStatePropertyAll(Colors.lightBlue),
                          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(borderRadius)))
                      ),
                      child: const Text('Day',style: TextStyle(fontWeight: FontWeight.normal)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child:  ElevatedButton(
                      onPressed: null,
                      style:  ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.lightBlue),
                          backgroundColor: const MaterialStatePropertyAll(Colors.white),
                          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(borderRadius)))
                      ),
                      child: const Text('Week',style: TextStyle(fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child:  ElevatedButton(
                      onPressed: null,
                      style:  ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.lightBlue),
                          backgroundColor: const MaterialStatePropertyAll(Colors.white),
                          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(borderRadius)))
                      ),
                      child: const Text('Month',style: TextStyle(fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child:  ElevatedButton(
                      onPressed: null,
                      style:  ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.lightBlue),
                          backgroundColor: const MaterialStatePropertyAll(Colors.white),
                          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(borderRadius)))
                      ),
                      child: const Icon(Icons.calendar_month, size: 20,),
                    ),
                  ),
                ]),
                  const GrossAddScreen(),
                ],
              )),
        );
  }
}
