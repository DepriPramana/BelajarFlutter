import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String id, name, job, created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        created: object['createdAt'],
        id: object['id'],
        job: object['job'],
        name: object['name']);
  }

  static Future<PostResult> connectAPI(String name, String job) async {
    String apiURL = 'https://reqres.in/api/users';

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
