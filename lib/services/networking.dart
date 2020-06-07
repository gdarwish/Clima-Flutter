import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  final String url;

  NetworkHelper(this.url);

  Future getData() async{
    //57b98d1c98d4659dba872321c3e4fb3d
    //api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={your api key}
    http.Response response = await http.get(url);
    if (response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
//    print(response.body);
  }

}