import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project_becky/data/modules/task/task.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/add_card.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/controller.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/task_card.dart';
import 'package:my_project_becky/screens/utilities/extensions.dart';

class TaskPage extends GetView<TaskController> {
  const TaskPage({Key? key}) : super(key: key);
  static String routeName = "/Task";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.deepOrange.shade300, Colors.blueAccent],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: const [0.2, 0.9],
      )),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor, shape: BoxShape.circle),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ]),
    ),
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'TASK TODO',
                style: TextStyle(
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                      .map((element) => LongPressDraggable(
                          onDragStarted: () => controller.changeDeleting(true),
                          onDraggableCanceled: (_, __) =>
                              controller.changeDeleting(false),
                          onDragEnd: (_) => controller.changeDeleting(false),
                          feedback: Opacity(
                            opacity: 0.8,
                            child: TaskCard(task: element),
                          ),
                          child: TaskCard(task: element)))
                      .toList(),
                  AddCard()
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          backgroundColor: controller.deleting.value ? Colors.red : Colors.blue,
          onPressed: () {},
          child: Icon(controller.deleting.value ? Icons.delete : Icons.add),
        ),
      ),
    );
  }
}
