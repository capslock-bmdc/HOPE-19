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

String proper(String quate) {
  String result;
  for (int a = 0; a < quate.length; a++) {
    // if(quate.substring(0, 1) > 0)
  }
}

fetch_forismatic() async {
  var response = await http
      .get('https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand');
  if (response.statusCode == 200) {
    var map1 = json.decode(response.body);
    String edit = map1[0]['content']['rendered'];
    // edit = proper(edit);
    print(map1[0]['title']['rendered']);
    print(edit);
  } else
    print(2);
}
