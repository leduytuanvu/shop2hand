class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://10.0.2.2:44309/api";

  // receiveTimeout
  static const int receiveTimeout = 50000;

  // connectTimeout
  static const int connectionTimeout = 50000;

  static const String posts = '/posts';
  static const String user = '/accounts';
  static const String login = '/authen/login';
}
