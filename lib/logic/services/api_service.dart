import 'dart:convert';
import 'dart:io';

import 'package:app_nation/logic/model/reddit_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future getRedditPosts() async {
    var response = await client
        .get('https://www.reddit.com/r/TechNewsToday/top.json?count=20');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('response.body : ' + response.body.toString());
      return Welcome.fromJson(json.decode(jsonString));
    } else {
      return null;
    }
  }
}
