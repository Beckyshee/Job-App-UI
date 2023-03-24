import 'package:flutter/widgets.dart';
import 'package:my_project_becky/login.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/view.dart';

/* import 'package:my_project_becky/my%20home/postage.dart';*/

import 'package:my_project_becky/signup.dart';
import 'package:my_project_becky/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  FormPage.routeName: (context) => FormPage(),
  TaskPage.routeName: (context) => const TaskPage(),

  /* PostJobPage.routeName: (context) => const PostJobPage(), */
};
