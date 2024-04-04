
import 'package:chopper/chopper.dart';
import 'package:nba/data/ClientRequestInterceptor.dart';
import 'package:nba/data/ClientResponseInterceptor.dart';
import 'package:nba/data/built_value_converter.dart.dart';

import 'package:http/http.dart' as darthttp;
import 'package:built_collection/built_collection.dart';
import 'package:nba/utils/constants.dart';
import 'package:nba/utils/sharedpreference.dart';

import 'package:nba/utils/httpclients/http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'package:nba/utils/httpclients/http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'package:nba/utils/httpclients/http_client_nonweb.dart';

import '../model/index.dart';



part 'post_api_service.chopper.dart';

@ChopperApi()
abstract class PostApiService extends ChopperService {
  @Get(path: '/subscribers')
  Future<Response<GAResponse>> getGADataByRange(@Query("msisdn") String msisdn);


  static PostApiService create() {
    final darthttp.BaseClient dartClient = createHttpClient();
    
    final client = ChopperClient(
      baseUrl: Uri.https(Constants.HTTP_BASE_URL, Constants.BASE_URL),
      services: [_$PostApiService()],
      client: dartClient,
      converter: BuiltValueConverter(),
      interceptors: [
        //_addQuery,
        const HeadersInterceptor({'Cache-control': 'no-cache', }),
        //HeadersInterceptor({'Content-Type': 'application/json'}),
        const HeadersInterceptor({'Accept': '*/*'}),
        HttpLoggingInterceptor(),
        ClientRequestInterceptor(),
        ClientResponseInterceptor()
        /**
        (Response response) async{
          if(response.statusCode == 401) {
            SharedPreference sharedPref = SharedPreference.getInstance();
            sharedPref.clearSF();
          }
          if(response.statusCode == 404){
            NavigationService.instance.navigateTo('/error');
          }
          return response;
        },
        **/
      ],
    );
    return _$PostApiService(client);
  }
}



