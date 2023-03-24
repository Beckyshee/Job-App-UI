/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_project_becky/data/Api/users.dart';

class Services {
  static const ROOT = 'http://localhost/jobs/user_actions.php';
  static const String _GET_ACTION = 'GET_ALL';
  static const String _CREATE_TABLE = 'CREATE_TABLE';
  static const String _ADD_USR_ACTION = 'ADD_USR';
  static const String _UPDATE_USR_ACTION = 'UPDATE_USR';
  static const String _DELETE_USR_ACTION = 'DELETE_USR';

  static Future<List> getUser() async {
    try {
      var map = <String, dynamic>{};
      map["action"] = _GET_ACTION;
      final response = await http.post(ROOT, body: map);
      print("getUser >> Response:: ${response.body}");
      if (response.statusCode == 200) {
        List list = parsePhotos(response.body);
        return list;
      } else {
        throw <Users>[];
      }
    } catch (e) {
      return <Users>[];
    }
  }

  static List<Users> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Users>((json) => Users.fromJson(json)).toList();
  }

  static Future<String> createTable() async {
    try {
      var map = <String, dynamic>{};
      map["action"] = _CREATE_TABLE;
      final response = await http.post(ROOT, body: map);
      print("createTable >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> addEmployee(String firstName, String lastName) async {
    try {
      var map = <String, dynamic>{};
      map["action"] = _ADD_USR_ACTION;
      map["first_name"] = firstName;
      map["last_name"] = lastName;
      final response = await http.post(ROOT, body: map);
      print("addEmployee >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> updateEmployee(
      String empId, String firstName, String lastName) async {
    try {
      var map = <String, dynamic>{};
      map["action"] = _UPDATE_USR_ACTION;
      map["emp_id"] = empId;
      map["first_name"] = firstName;
      map["last_name"] = lastName;
      final response = await http.post(ROOT, body: map);
      print("deleteEmployee >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> deleteEmployee(String empId) async {
    try {
      var map = <String, dynamic>{};
      map["action"] = _DELETE_USR_ACTION;
      map["emp_id"] = empId;
      final response = await http.post(ROOT, body: map);
      print("deleteEmployee >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }
}*/
