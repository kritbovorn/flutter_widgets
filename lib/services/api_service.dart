import 'package:flutter_widgets/models/post.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var uri = Uri.parse(url);

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
