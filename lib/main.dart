import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';

import 'modules/router/app_page.dart';
import 'modules/router/app_router.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      initialRoute: AppRouters.profile,
      getPages: AppPages.listPage,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
