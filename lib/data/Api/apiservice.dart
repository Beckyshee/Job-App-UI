/*import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_project_becky/data/modules/loginmodule.dart';


class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String uri = "https://reqres.in/api/login";

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
} */