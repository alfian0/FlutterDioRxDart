abstract class Enum<T> {
  final T _value;

  const Enum(this._value);

  T get value => _value;
}

class HttpMethod extends Enum<String> {
  const HttpMethod(String val) : super(val);

  static const HttpMethod GET = HttpMethod('GET');
  static const HttpMethod POST = HttpMethod('POST');
  static const HttpMethod PUT = HttpMethod('PUT');
  static const HttpMethod DELETE = HttpMethod('DELETE');
}

abstract class HttpRequestProtocol {
  const HttpRequestProtocol();
  String get baseUrl;
  String get path;
  HttpMethod get method;
  Map<String, String>? get headers;
  Map<String,dynamic>? get queryParameters;
  Map<String, dynamic>? get body;
  int? get sendTimeout => 30000;
  int? get receiveTimeOut => 30000;
}