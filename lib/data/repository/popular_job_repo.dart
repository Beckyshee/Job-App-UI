import 'package:get/get.dart';
import 'package:my_project_becky/data/Api/api_client.dart';

class PopularJobRepo extends GetxService {
  final ApiClient apiClient;
  PopularJobRepo({required this.apiClient});

  Future<Response> getPopularJobList() async {
    return await apiClient.getData("endpoint Url");
  }
}
