import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  Future<List<dynamic>> getUsers() async {
    var info = rootBundle.loadString("lib/Json/data.json");
    var List = json.decode(await info);
    return List.map((e) => e).toList();
  }
}
