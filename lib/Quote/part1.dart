import 'package:http/http.dart' as http;

fetch_forismatic() async {
  var response = await http
      .get('http://api.forismatic.com/api/1.0/format=<json>&lang=<en>');
  if (response.statusCode == 200)
    print(1);
  else
    print(2);
}
