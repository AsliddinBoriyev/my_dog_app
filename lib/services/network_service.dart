import 'dart:convert';

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http_parser/http_parser.dart';
import 'package:my_dog_app/services/intercepter_service.dart';

class NetworkService {
  // baseUrl
  static const isTester = true;

  static const DEVELOPMENT_SERVER = "api.thedogapi.com";
  static const DEPLOYMENT_SERVER = "api.thedogapi.com";

  static String get BASEURL {
    if (isTester) {
      return DEVELOPMENT_SERVER;
    } else {
      return DEPLOYMENT_SERVER;
    }
  }

  // apis
  static const API_LIST_BREADS = "/v1/breeds";
  static const API_BREADS_SEARCH = "/v1/breeds/search";
  static const API_LIST_VOTES = "v1/votes";
  static const API_ONE_VOTE = "v1/votes/"; // {ID}
  static const API_IMAGE_LIST = "/v1/images/search";

  // headers
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'x-api-key': '3bccf076-d637-4934-96ae-c4815ff88719',
  };

  static Map<String, String> headersForUpload = {
    'Content-Type': 'multipart/form-data',
    'x-api-key': '3bccf076-d637-4934-96ae-c4815ff88719',
  };

  // interceptor
  static final http = InterceptedHttp.build(interceptors: [
    InterceptorService(),
  ]);

  // methods
  static Future<String?> GET(String api, Map<String, String> params) async {
    Uri url = Uri.https(BASEURL, api, params);
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> POST(
    String api,
    Map<String, String> params,
    Map<String, dynamic> body,
  ) async {
    Uri url = Uri.https(BASEURL, api);
    final response = await http.post(url,
        headers: headers, body: jsonEncode(body), params: params);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(
    String api,
    Map<String, String> params,
    Map<String, dynamic> body,
  ) async {
    Uri url = Uri.https(BASEURL, api, params);
    final response =
        await http.put(url, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> PATCH(
    String api,
    Map<String, String> params,
    Map<String, dynamic> body,
  ) async {
    Uri url = Uri.https(BASEURL, api, params);
    final response =
        await http.patch(url, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DELETE(String api, Map<String, String> params) async {
    Uri url = Uri.https(BASEURL, api, params);
    final response = await http.delete(url, headers: headers);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> MULTIPART(
      String api, String filePath, Map<String, String> body) async {
    var uri = Uri.https(BASEURL, api);
    var request = MultipartRequest('POST', uri);
    request.headers.addAll((headersForUpload));
    request.files.add(await MultipartFile.fromPath('file', filePath,
        contentType: MediaType("image", "jpeg")));
    request.fields.addAll(body);
    StreamedResponse response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      return await response.stream.bytesToString();
    } else {
      return response.reasonPhrase;
    }
  }

  // params
  static Map<String, String> paramsEmpty() {
    Map<String, String> map = {};
    return map;
  }

  static Map<String, String> paramsBreedSearch(String queryName) {
    Map<String, String> map = {'q': queryName};
    return map;
  }

  static Map<String, String> paramsVotesList(
      {int limit = 10, int page = 0, String? subId}) {
    Map<String, String> map = {
      'limit': limit.toString(),
      'page': page.toString()
    };
    if (subId != null) {
      map.addAll({"sub_id": subId});
    }
    return map;
  }

  static Map<String, String> paramsImageSearch(
      {String size = "med",
      List<String>? mimeType,
      String order = "RANDOM",
      int limit = 10,
      int page = 0,
      List<int>? categoryIds,
      String format = "json",
      String? breedId}) {
    //size:full,med,small,thumb,
    //order:Random,ASC,DESC,
    //format:json,src,

    Map<String, String> map = {
      'limit': limit.toString(),
      'page': page.toString(),
      'size': size,
      'order': order,
      'format': format,
    };

    if (mimeType != null) map.addAll({"mime_types": jsonEncode(mimeType)});
    if (categoryIds != null) {
      map.addAll({"category_ids": jsonEncode(categoryIds)});
    }
    if (breedId != null) map.addAll({"breed_id": breedId});
    return map;
  }

  // bodies
  static Map<String, dynamic> bodyVotes(
      String imageId, String subId, int value) {
    Map<String, dynamic> map = {
      "image_id": imageId,
      "sub_id": subId,
      "value": value
    };
    return map;
  }

// parsing
}
