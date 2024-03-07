import 'dart:async';

import 'package:chopper/chopper.dart';

import '../utils/sharedpreference.dart';

class ClientRequestInterceptor implements RequestInterceptor{
   
  @override
  FutureOr<Request> onRequest(Request req) async {
    SharedPreference sharedPref = SharedPreference.getInstance();
    String n = await sharedPref.getStringValuesSF(enumKey.BASE_64_EncodedAuthenticationKey.toString());
    String _mssidn = await sharedPref.getStringValuesSF(currentUserEnum.M_SSD_IN.toString());
    String _tenantIdentifier = await  sharedPref.getStringValuesSF(enumKey.TENANT_OPT.toString());
    final params = Map<String, dynamic>.from(req.parameters);
    final header = req.headers;
    print(req.url.path);
    bool _sendAuthorization = req.url.path != '/egsaving-gateway/oauth/token/app' && req.url.path != '/egsaving-gateway/app-internal/api/tenants' && req.url.path != '/egsaving-gateway/app-internal/users/resendtoken' && req.url.path != '/egsaving-gateway/app-internal/users/validate' ;

    if(req.parameters['msisdn'] != null){
      _mssidn = req.parameters['msisdn'];
    }
    if(_sendAuthorization && n != 'null') {
      header['Authorization'] = 'Bearer $n';
      if(_mssidn.isNotEmpty || _mssidn != null) {
        params['msisdn'] = _mssidn;
      }
    }
    if(req.url.path != '/egsaving-gateway/oauth/token/app' ) {
      if (_tenantIdentifier.isNotEmpty) {
        header['Fineract-Platform-TenantId'] = _tenantIdentifier;
      } else {
        header['Fineract-Platform-TenantId'] = 'default';
      }
    }
    return req.copyWith(parameters: params, headers: header);
  }
  
}

