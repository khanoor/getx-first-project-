import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../app_exceptions.dart';
import 'base_Api_Services.dart';

class NetworkApiService extends BaseApiServices {

   
  @override
  Future getApi(String url) async {
    if(kDebugMode){
      print(url);
     }
    dynamic responseJosn;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJosn = jsonDecode(response.body);
    } on SocketException {
      throw InternetException("No Internet connection");
    } on RequestTimeOut{
      throw RequestTimeOut();
    }
    return responseJosn;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200: 
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 400: 
      throw InvalidUrlException();
      default :
      throw FetchDataException('error while communication${response.statusCode}');
      
      }
    

  }

  @override
  Future postApi(String url, dynamic data) async {
    if(kDebugMode){
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = response.body;
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }
}
