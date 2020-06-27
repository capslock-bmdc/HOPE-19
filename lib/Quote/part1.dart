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
  String result = "";
  quate = quate.toLowerCase();
  for (int a = 0; a < quate.length; a++) {
    if (quate.substring(a, a + 1).codeUnitAt(0) == 60) {
      a = quate.substring(a).indexOf('>');
    }
    if ((quate.substring(a, a + 1).codeUnitAt(0) > 96 &&
            quate.substring(a, a + 1).codeUnitAt(0) < 123) ||
        quate.substring(a, a + 1).codeUnitAt(0) == 32 ||
        quate.substring(a, a + 1).codeUnitAt(0) == 8217 ||
        quate.substring(a, a + 1).codeUnitAt(0) == 39)
      result = result + quate.substring(a, a + 1);
  }
  return result;
}

fetch_forismatic() async {
  var response = await http
      .get('https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand');
  if (response.statusCode == 200) {
    var map1 = json.decode(response.body);
    String edit = map1[0]['content']['rendered'];
    edit = proper(edit);
    print(map1[0]['title']['rendered']);
    print(edit);
    print(edit.codeUnitAt(53));
  } else
    print(2);
}
