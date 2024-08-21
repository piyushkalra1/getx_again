
import 'package:flutter/material.dart';
class AppException implements Exception {
  final  _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  String toString(){
    return '$_prefix $_message';
  }

}

class InternetException extends AppException{
  InternetException([String ? message]): super(message,'No internet');
}

class RequestTimeOut extends AppException{
  RequestTimeOut([String ? message]): super(message,'Request time out');
}

class FetchDataException extends AppException{
  FetchDataException([String ? message]): super(message,'error during communication');
}

class BadRequestException extends AppException{
  BadRequestException([String ? message]): super(message,'Invalid request');
}
class UnAuthorisedException extends AppException{
  UnAuthorisedException([String ? message]): super(message,'UnAuthorised request');
}
class InvalidInputdException extends AppException{
  InvalidInputdException([String ? message]): super(message,'InvalidInput request');
}