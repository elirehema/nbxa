import 'package:flutter/material.dart';

class WBoltAlert extends StatelessWidget{
  const WBoltAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const ListTile(
            leading: Icon(Icons.error_rounded, color: Colors.red,),
            trailing: Icon(Icons.circle_sharp, size: 16, color: Colors.lightGreen,),
            title: Text('Uh-Oh! An error has occurred in your integration `Sales Data`.',style: TextStyle(fontWeight: FontWeight.w500,)),
            subtitle: Text('There are 25 rows that cannot be processed through the validation layer', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
          child: SizedBox(
            width: 150,
            child: OutlinedButton(
                onPressed: null,
              style:  ButtonStyle(
                foregroundColor: const MaterialStatePropertyAll(Colors.blue),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.blueGrey,
                              width: 3,
                              style: BorderStyle.solid
                          ),
                          borderRadius:  BorderRadius.circular(5.0)))
              ),
                child: const Text('Fix Now'),
            ),
          ))
        ],
      ),
    );
  }
}