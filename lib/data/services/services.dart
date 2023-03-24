/*import 'dart:convert';
import 'package:http/http.dart'
    as http; // add the http plugin in pubspec.yaml file.
import 'package:my_project_becky/data/Api/users.dart';

class Services {
  static  String ROOT = 'http://localhost/jobs/user_actions.php';
  static const _CREATE_TABLE_ACTION = 'CREATE_TABLE';
  static const _GET_ALL_ACTION = 'GET_ALL';
  static const _ADD_USR_ACTION = 'ADD_USR';
  static const _UPDATE_USR_ACTION = 'UPDATE_USR';
  static const _DELETE_USR_ACTION = 'DELETE_USR';
  
  

  // Method to create the table Employees.
   Future<String> createTable() async {
    try {
      // add the parameters to pass to the request.
      var map = new Map<String, dynamic>();
      map['action'] = _CREATE_TABLE_ACTION;
      final response = await http.post(ROOT, body: map);
      print('Create Table Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  static Future<List<Users>> getUser() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      //final response = await http.post(ROOT, body: map);
      var url = uri.parse
     var response = await http.post(url);
      print('getUser Response: ${response.body}');
      if (200 == response.statusCode) {
        List<Users> list = parseResponse(response.body);
        return list;
      } else {
        return <Users>[];
      }
    } catch (e) {
      return <Users>[]; // return an empty list on exception/error
    }
  }

  static List<Users> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Users>((json) => Users.fromJson(json)).toList();
  }

  // Method to add employee to the database...
  static Future<String> addUsers(String name, String email, String phone,
      String image, String password) async {
    try {
      
      var map = Map<String, dynamic>();
      map['action'] = _ADD_USR_ACTION;
      map['first_name'] = name;
      map['last_name'] = email;
      map['last_name'] = phone;
      map['last_name'] = image;
      map['last_name'] = password;
      final response = await http.post(ROOT, body: map);
      print('addUser Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to update an Employee in Database...
  static Future<String> updateUser(String usrId, String name, String email,
      String phone, String image, String password) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _UPDATE_USR_ACTION;
      map['usr_id'] = usrId;
      map['name'] = name;
      map['email'] = email;
      map['phone'] = phone;
      map['image'] = image;
      map['password'] = password;
      final response = await http.post(ROOT, body: map);
      print('updateUsers Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to Delete an Employee from Database...
  static Future<String> deleteUsers(String usrId) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _DELETE_USR_ACTION;
      map['usr_id'] = usrId;
      final response = await http.post(ROOT, body: map);
      print('deleteUsers Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error"; // returning just an "error" string to keep this simple...
    }
  }
} */
