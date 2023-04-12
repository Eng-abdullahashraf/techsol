import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techso/network/cache.dart';
import 'package:techso/network/dio.dart';
import 'package:techso/screens/splash.dart';

import 'cubit/bloc_observer.dart';
import 'locale/locale.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  diohelp.init();
  await cache.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: tecsplash(),
        translations: Mylocale(),
        locale: Get.deviceLocale ,
        fallbackLocale: Locale('en')
    );
  }
}
