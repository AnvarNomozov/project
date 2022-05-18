import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/views/home_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  MyRoutes _routes = MyRoutes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeView(),
      onGenerateRoute: _routes.onGeneraRoute,
      initialRoute: "/home",
    );
  }
}
