import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetNewNotification extends StatelessWidget{
  final bool action;
  const WidgetNewNotification({super.key, required this.action});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      height: 40,
                      width: 60,
                      image: AssetImage('assets/images/next.png'),
                    ),
                  ),
                ),
                 Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(padding: const EdgeInsets.only(right: 8.0, top: 9.0, bottom: 5.0),
                   child: RichText(
                     text:  TextSpan(
                       style: DefaultTextStyle.of(context).style,
                       children: const [
                         TextSpan(
                           text: 'Lukas Mueller ', style: TextStyle(fontWeight: FontWeight.bold)
                         ),
                         TextSpan(text:'your daily G/A progress is not doing fine. Kindly check an take some actions.',),
                         TextSpan(text: ' Like recruiting more freelancers. ', style: TextStyle(fontWeight: FontWeight.bold) ),
                         TextSpan(text: 'Thanks')
                       ]
                     ),
                   ),
                    ),
                       Padding(padding: EdgeInsets.only(top: 4.0, bottom: action ? 2.0:1.0),
                        child: const Text('Today at 5:27 AM', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),),
                      Visibility(
                        visible: action,
                          child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 90,
                            child: ElevatedButton(
                              onPressed: null,
                              style:  ButtonStyle(
                                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                                  backgroundColor: const MaterialStatePropertyAll(Colors.green),
                                  padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(3.0)))
                              ),
                              child: const Text('Accept',style: TextStyle(fontWeight: FontWeight.normal)),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(
                            width: 90,
                            child: ElevatedButton(
                              onPressed: null,
                              //icon: const Icon(Icons.close),
                              style:  ButtonStyle(
                                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                                  backgroundColor: const MaterialStatePropertyAll(Colors.red),
                                  padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0, vertical: 6)),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(3.0)))
                              ),
                              child: const Text('Decline',style: TextStyle(fontWeight: FontWeight.normal),),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ]),
      ),
    );
  }

}