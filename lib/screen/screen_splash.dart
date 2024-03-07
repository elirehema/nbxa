import 'dart:async';
import 'dart:io';

import 'package:nba/utils/index.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() =>  SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  Future<void>  navigationPage() async{
      SharedPreference sharedPref = SharedPreference.getInstance();
      bool isLoggedIn = await sharedPref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString()) ?? false;
      bool hasPasscode = await sharedPref.contain(securityEnum.PASSCODE.toString());
      Navigator.of(context).pushReplacementNamed('/home');
      /**
      await Future.delayed(Duration(seconds: 5));
      **
      if(isLoggedIn && hasPasscode){
        print('Logged In');
        Navigator.of(context).pushReplacementNamed('/passcode');
      }else{
        print('Not Logged In');
       Navigator.of(context).pushReplacementNamed('/login');
      }
      **/
 
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child:  Image.asset(
          'assets/images/red_icon.png',
          width: 104.0,
          height: 104.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navigationPage();
  }
}
