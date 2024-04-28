// ignore_for_file: unnecessary_this

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

///can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
