import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project_becky/data/modules/task/task.dart';
import 'package:my_project_becky/data/services/storage/services.dart';
import 'package:my_project_becky/screens/utilities/keys.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();

  /* {'tasks': [
    {
      'title': 'construction',
      'color': '#ff123456',
      'icon': Icons.construction
    } 
  ]
  } */
  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTask(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }

  writeTasks(List<Task> tasks) {}
}
