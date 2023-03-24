import 'package:flutter/material.dart';
import 'package:my_project_becky/data/services/storage/services.dart';
import 'package:my_project_becky/login.dart';
import 'package:my_project_becky/my%20home/widgets/task%20widgets/binding.dart';
import 'package:my_project_becky/screens/homepage/home_page.dart';
import 'package:my_project_becky/signup.dart';
import 'package:my_project_becky/welcome.dart';
import 'routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
      initialBinding: TaskBinding(),
      builder: EasyLoading.init(),
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        accentColor: Color(0xFFFED408),
      ),

      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
