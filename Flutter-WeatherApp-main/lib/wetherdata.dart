// ignore_for_file: unused_import, unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:orw/WeatherModel.dart';

class wehterdtat {
  Future<wether> getDtat(var latiude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=aa6cd4d853e146a88c6183751230103&q=$latiude,$longitude&aqi=no');

    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return wether.fromjson(body);
  }
}
