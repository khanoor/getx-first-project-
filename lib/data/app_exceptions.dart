class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);
  @override
  String toString() {
    return '$_prefix$_message';
  }
}


class InternetException extends AppException {
  InternetException([String? message]) : super(message, "No Internet");
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message]) : super(message, "Request Time Out");
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, "Internal Server Error");
}


class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, 'Error');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Invalid Request");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message, "Unauthorised Request");
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String? message])
      : super(message, "Invalid Url");
}




class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invalid Input");
}