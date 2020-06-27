import 'dart:convert';
import 'package:http/http.dart' as http;

class Quate {
  var name;
  var quate;

  Quate(name, quate) {
    this.name = name;
    this.quate = quate;
  }
}

fetch_forismatic() async {
  var response = await http
      .get('https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand');
  if (response.statusCode == 200) {
    var map1 = json.decode(response.body);
    print(map1[0]);
  } else
    print(2);
}
