import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_project_becky/data/modules/task/task.dart';
import 'package:my_project_becky/data/services/storage/repository.dart';

class TaskController extends GetxController {
  TaskRepository taskRepository;
  TaskController({required this.taskRepository});
  final formKey = GlobalKey<FormState>();
  final editCtrl = TextEditingController();
  final chipIndex = 0.obs;
  final tasks = <Task>[].obs;
  final deleting = false.obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    editCtrl.dispose();
    super.onClose();
  }

  void changeChipIndex(int value) {
    chipIndex.value = value;
  }

  void changeDeleting(bool value) {
    deleting.value = value;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)) {
      return false;
    }
    tasks.add(task);
    return true;
  }
}
