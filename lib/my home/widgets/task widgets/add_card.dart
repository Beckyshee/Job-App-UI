import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_project_becky/data/modules/task/task.dart';
import 'package:my_project_becky/my%20home/icon%20widgets/icons.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/controller.dart';
import 'package:my_project_becky/screens/utilities/colors.dart';
import 'package:my_project_becky/screens/utilities/extensions.dart';

class AddCard extends StatelessWidget {
  AddCard({Key? key}) : super(key: key);
  final taskCtrl = Get.find<TaskController>();
  @override
  Widget build(BuildContext context) {
    final icons = GetIcons();
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      width: squareWidth / 2,
      height: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () async {
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Task Type',
            content: Form(
              key: taskCtrl.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.wp),
                    child: TextFormField(
                      controller: taskCtrl.editCtrl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Title',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'please enter your task title';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0.wp),
                    child: Wrap(
                      spacing: 2.0.wp,
                      children: icons
                          .map(
                            (e) => Obx(() {
                              final index = icons.indexOf(e);
                              return ChoiceChip(
                                selectedColor: Colors.grey[200],
                                pressElevation: 0,
                                backgroundColor: Colors.white,
                                label: e,
                                selected: taskCtrl.chipIndex.value == index,
                                onSelected: (bool selected) {
                                  taskCtrl.chipIndex.value == selected
                                      ? index
                                      : 0;
                                },
                              );
                            }),
                          )
                          .toList(),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: const Size(150, 40),
                      ),
                      onPressed: () {
                        if (taskCtrl.formKey.currentState!.validate()) {
                          int icon =
                              icons[taskCtrl.chipIndex.value].icon!.codePoint;
                          String color =
                              icons[taskCtrl.chipIndex.value].color!.toHex();
                          var task = Task(
                            title: taskCtrl.editCtrl.text,
                            icon: icon,
                            color: color,
                          );
                          Get.back();
                          taskCtrl.addTask(task)
                              ? EasyLoading.showSuccess('Create success')
                              : EasyLoading.showError('Duplicated Task');
                        }
                      },
                      child: const Text('confirm'))
                ],
              ),
            ),
          );
          taskCtrl.editCtrl.clear();
          taskCtrl.changeChipIndex(0);
        },
        child: DottedBorder(
          color: Colors.grey,
          dashPattern: const [8, 4],
          child: Center(
            child: Icon(
              Icons.add,
              size: 10.0.wp,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
