import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/search/search_appbar.dart';
import 'package:my_project_becky/my%20home/models/search/search_input.dart';
import 'package:my_project_becky/my%20home/models/search/search_list.dart';
import 'package:my_project_becky/my%20home/models/search/search_option.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOption(),
              Expanded(child: SearchList()),
            ],
          )
        ],
      ),
    );
  }
}
