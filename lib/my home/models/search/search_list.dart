import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/jobs.dart';
import 'package:my_project_becky/my%20home/widgets/job_item.dart';
import 'package:my_project_becky/my%20home/widgets/job_list.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key}) : super(key: key);
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          itemBuilder: ((context, index) => JobItem(
                jobList[index],
                showPayment: true,
              )),
          separatorBuilder: (_, index) => const SizedBox(
                height: 20,
              ),
          itemCount: jobList.length),
    );
  }
}
