import 'dart:convert';

import 'package:http/http.dart' as http;

class GetSingleUser {
  String id, name;

  GetSingleUser({this.id, this.name});

  factory GetSingleUser.createSingleUser(Map<String, dynamic> object) {
    return GetSingleUser(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }

  static Future<GetSingleUser> connectToAPI(String id) async {
    String urlApi = 'https://reqres.in/api/users/' + id;

    var apiResult = await http.get(urlApi);
    var jsonObject = json.decode(apiResult.body);

    var singelUserData = (jsonObject as Map<String, dynamic>)['data'];

    return GetSingleUser.createSingleUser(singelUserData);
  }
}
