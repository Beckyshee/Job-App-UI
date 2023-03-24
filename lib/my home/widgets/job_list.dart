import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/jobs.dart';
import 'package:my_project_becky/my%20home/widgets/job_item.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/job_detail.dart';

class JobList extends StatelessWidget {
  JobList({Key? key}) : super(key: key);
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetail(jobList[index]));
              },
              child: JobItem(jobList[index])),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
