import 'dart:convert';

import 'package:flutter_application_3/Api/StatusApi.dart';
import 'package:http/http.dart' as http;
class Model{
  Future<StatusApi> getStatusApi() async{
    var result;
    var headers = {
     'post_count_start_date':'2022-04-13',
     'post_count_end_date':'2022-05-11',
     'user_id':'1'
    };
    var response = await http.get(Uri.parse('https://dev.restrohub.com/wp-json/rp-api/v1/order_counts?post_count_start_date=2022-04-13&post_count_end_date=2022-05-11&user_id=1'),
    headers: headers);
    print(response.body.toString());
    if(response.statusCode==200){
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      return StatusApi.fromJson(jsonMap);
    }else{
      throw Exception("Failed to load data");
    }
  }
}
