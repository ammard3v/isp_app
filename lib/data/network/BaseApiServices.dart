// ignore_for_file: file_names

abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url, String token,
      {Map<String, String>? headers});
  Future<dynamic> getPostApiResponse(String url, dynamic data, {String? token});
}
