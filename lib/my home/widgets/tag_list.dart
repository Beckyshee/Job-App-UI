import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/widgets/job_item.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/job_detail.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagList = <String>['All', 'Popular', 'Featured'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor.withOpacity(0.2)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selected == index
                          ? Theme.of(context).primaryColor.withOpacity(0.2)
                          : Colors.white,
                    )),
                child: Text(tagList[index]),
              )),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: tagList.length),
    );
  }
}
