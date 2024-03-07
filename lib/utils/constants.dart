

import 'package:easy_localization/easy_localization.dart';

class Constants{
  static String isOnBoard= "IS_ONBOARD";
  static String isLoggedIn= "IS_LOGGED_IN";
  //Validations REGEX
  static final String emailPattern = "^([0-9a-zA-Z]([-.+\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})\$";
  static const String PHOTOSURL = "https://api.unsplash.com/";
  static const String HTTP_BASE_URL = 'eppg.ngazi.co.tz';
  static const String BASE_URL = "egsaving-gateway/app-internal";
  static NumberFormat currencyFormat = NumberFormat("###,###.00#", "en_US");

}