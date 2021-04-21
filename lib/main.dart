import 'package:flutter/material.dart';
import 'package:flutter_handling_memory/home_page.dart';
import 'package:flutter_handling_memory/store/teste_store.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(MyApp());
  GetIt.I.registerLazySingleton(() => TesteStore());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
