import 'package:flutter/material.dart';

class WActionAlert extends StatelessWidget {
  const WActionAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: Colors.lightBlue.shade50,
      elevation: 0.0,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Image(
                    height: 40,
                    width: 60,
                    image: AssetImage('assets/images/vodacom.png'),
                  ),
                ),
                const Expanded(
                  child: ListTile(
                    subtitle: Text(
                        'Your daily G/A progress is not doing fine. Kindly check an take some actions. Thanks'),
                  ),
                )
              ]),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                        onPressed: null,
                      label: const Text('Action'),
                        icon: const Icon(Icons.check),

                      style:  ButtonStyle(
                        foregroundColor: const MaterialStatePropertyAll(Colors.white),
                        backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                        padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                side:const BorderSide(
                                    color: Colors.transparent,
                                    width: 0,
                                    style: BorderStyle.solid
                                ),
                            borderRadius:  BorderRadius.circular(10.0)))
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: null,
                      label: const Text('View'),
                      icon: const Icon(Icons.remove_red_eye),
                      style:  ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.white),
                          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
                          padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  side:const BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                      style: BorderStyle.solid
                                  ),
                                  borderRadius:  BorderRadius.circular(10.0)))
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
