import 'package:get/get.dart';
import 'package:my_project_becky/data/repository/popular_job_repo.dart';
import 'package:my_project_becky/my%20home/models/job_model.dart';


class PopularJobController extends GetxController {
  final PopularJobRepo popularJobRepo;
  PopularJobController({required this.popularJobRepo});
  List<dynamic> _popularJobList = [];
  List<dynamic> get PopularJobList => _popularJobList;

  Future<void> getPopularProductList() async {
    Response response = await popularJobRepo.getPopularJobList();
    if (response.statusCode == 200) {
      _popularJobList = [];
      _popularJobList.addAll(Work.fromJson(response.body).jobs);
      update();
    } else {}
  }
}
