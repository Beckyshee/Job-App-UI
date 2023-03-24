import 'package:get/get.dart';
import 'package:my_project_becky/controllers/popular_job_controller.dart';
import 'package:my_project_becky/data/Api/api_client.dart';
import 'package:my_project_becky/data/repository/popular_job_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: 'appBaseUrl'));
//repos
  Get.lazyPut(() => PopularJobRepo(apiClient: Get.find()));

  //controllers   //...how to load my controllers
  Get.lazyPut(() => PopularJobController(popularJobRepo: Get.find()));
}
