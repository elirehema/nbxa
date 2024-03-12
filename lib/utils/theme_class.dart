import 'package:flutter/material.dart';
import 'package:nba/utils/index.dart';
import 'package:nba/utils/util.dart';
import 'package:nba/utils/utils.dart';

import 'colors.dart';
import 'constants.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.red,
      primaryColor: colorPrimary,
      brightness: Brightness.light,
      hintColor: Colors.black,
      dividerColor: Colors.white54,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
          backgroundColor: colorPrimary,
          foregroundColor: Colors.white,
          actionsIconTheme: const IconThemeData(color: Colors.white),
          iconTheme: IconThemeData(color: colorPrimary),
          titleTextStyle: const TextStyle(
            color: Colors.white
          )
      ),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white
      ),
      textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          headline2: TextStyle( fontSize: 20.0, fontWeight: FontWeight.w500),
          headline3: TextStyle( fontSize: 16.0),
          headline4: TextStyle( fontSize: 12.0)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorPrimary,
        unselectedIconTheme: new IconThemeData(color: Colors.white70),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black54,
        labelColor: colorPrimary,
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: buttonColor,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7.5)),
            side: BorderSide(color: roundedBorder))
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: red,
        foregroundColor: red,
        focusColor: red, 
        elevation: 2.0,
        highlightElevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)
        )
      ),
      dividerTheme: const DividerThemeData(color: Colors.grey),
      cardTheme: CardTheme(
        shadowColor: Colors.grey,
        elevation: 1.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: Utils.coloredButtonStyle(colorPrimary),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: red
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.grey),
        thumbColor: MaterialStateProperty.all(red),
      ),
      iconTheme: IconThemeData(color: red));

  /* Dark theme settings */
  static ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: colorPrimaryDark,
      brightness: Brightness.dark,
      hintColor: Colors.white,
      dividerColor: Colors.black,
      scaffoldBackgroundColor: darkScaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
          backgroundColor: colorPrimaryDark,
          foregroundColor: colorPrimaryDark,
          actionsIconTheme: const IconThemeData(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(
              color: Colors.white
          )
      ),
      dialogTheme: DialogTheme(
        backgroundColor: colorPrimaryDark
      ),
      textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          headline3: TextStyle(fontSize: 16.0),
          headline4: TextStyle(fontSize: 12.0)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorPrimaryDark,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedIconTheme: const IconThemeData(
          color: Colors.red,
        ),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: Colors.white70,
        labelColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: yellow,
          foregroundColor: yellow,
          focusColor: yellow,
          elevation: 2.0,
          highlightElevation: 3.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)
          )
      ),
      dividerTheme: const DividerThemeData(color: Colors.white),
      cardTheme: CardTheme(
        shadowColor: Colors.grey,
        elevation: 1.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: Utils.coloredButtonStyle(colorPrimary),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
          color: yellow
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.grey),
        thumbColor: MaterialStateProperty.all(yellow),
      ),
      iconTheme: const IconThemeData(color: Colors.white));
}
