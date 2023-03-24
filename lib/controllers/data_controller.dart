import 'dart:ffi';

import 'package:get/get.dart';
import 'package:my_project_becky/data/services/data_services.dart';

class DataController extends GetxController {
  var List = [].obs;
  final service = new DataServices();
  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  _loadData() async {
    var info = service.getUsers();
    List.addAll(await info);
  }
}
