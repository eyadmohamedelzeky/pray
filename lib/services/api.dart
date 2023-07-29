import 'dart:convert';
import 'dart:developer';

import 'package:prayer/models/pray_modal.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<PrayerModel> getPrayerTime(DateTime dateTime) async {
    log("Request is : http://api.aladhan.com/v1/calendar/${dateTime.year}/${dateTime.month}?latitude=51.508515&longitude=-0.1254872&method=2");
    var response = await http.get(
      Uri.parse(
          'http://api.aladhan.com/v1/calendar/${dateTime.year}/${dateTime.month}?latitude=51.508515&longitude=-0.1254872&method=2'),
    );

    // log('statusCode${response.statusCode}');

    if (response.statusCode == 200 && (response.body.trim().startsWith("{"))) {
      return PrayerModel.fromJson(jsonDecode(response.body));
    } else {
      if (response.statusCode == 400) {}
      // log("response.body: =>  ${response.body}");
      throw Exception('Failed To load data');
    }
  }
}
