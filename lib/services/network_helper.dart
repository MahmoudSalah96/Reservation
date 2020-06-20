import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future fetchData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var fetchedData = response.body;

      return jsonDecode(fetchedData);
    } else {
      print(response.statusCode);
    }
  }
}
