import 'package:get/get.dart';
import 'package:my_project_becky/data/services/storage/repository.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/controller.dart';
import 'package:my_project_becky/providers/task/provider.dart';

class TaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TaskController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
