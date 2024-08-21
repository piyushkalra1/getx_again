
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http;
import '../app_exceptions.dart';
import 'baseapiServices.dart';

class NetworkApiService extends BaseApiServices{
  @override
  Future getGetApiResponse(String url) async{

    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 6));
      responseJson = returnResponse (response);

    }on SocketException{
      throw FetchDataException('No Internet connection');
    }on RequestTimeOut{
      throw RequestTimeOut("time out");
    }
    if(kDebugMode)print(responseJson);
    return responseJson;
  }

  
  @override
  Future getPostApiResponse(String url,dynamic data,dynamic headers) async{
    dynamic responseJson;

    try{
      Response response =await post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: headers
      ).timeout(Duration(seconds: 6));
      responseJson = returnResponse (response);



    }on SocketException{
      throw FetchDataException('No Internet connection');
    }
    if(kDebugMode)print(responseJson);
    return responseJson;
  }
  
  dynamic returnResponse (http.Response response){
    
    switch(response.statusCode){
      case 200:
        dynamic responseJson =jsonDecode(response.body);
        return responseJson ;

      case 500:

      case 400:
        throw BadRequestException(response.body.toString());

      case 404:
        throw UnAuthorisedException(response.body.toString());

      default:
        throw FetchDataException('Eroor accoured while communicating with server'
        +'with status code'+response.statusCode.toString());
    }
  }
}