import 'dart:async';

import 'package:chopper/chopper.dart';

import '../utils/navigation_service.dart';
import '../utils/sharedpreference.dart';

class ClientResponseInterceptor implements ResponseInterceptor{
  @override
  FutureOr<Response> onResponse(Response response) async{
    if(response.statusCode == 401) {
      SharedPreference sharedPref = SharedPreference.getInstance();
      sharedPref.clearSF();
    }
    if(response.statusCode == 404){
      NavigationService.instance.navigateTo('/error');
    }
    return response;
  }

}