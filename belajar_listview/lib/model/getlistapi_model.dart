import 'dart:convert';
import 'package:http/http.dart' as http;

class GetListDataUser {
  String id, name;
  GetListDataUser({this.id, this.name});

  factory GetListDataUser.createList(Map<String, dynamic> object) {
    return GetListDataUser(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }

  static Future<List<GetListDataUser>> getListUserApi(String page) async {
    String apiUrl = 'https://reqres.in/api/users?page=' + page;

    var getResult = await http.get(apiUrl);
    var jsonResult = json.decode(getResult.body);
    List<dynamic> listUser = (jsonResult as Map<String, dynamic>)['data'];

    List<GetListDataUser> users = [];

    for (int i = 0; i < listUser.length; i++)
      users.add(GetListDataUser.createList(listUser[i]));
    print(jsonResult['data'].lenght);

    return users;
  }
}
