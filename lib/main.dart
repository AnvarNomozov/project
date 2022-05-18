import 'package:flutter/material.dart';
import 'package:project/provider/next_photo_provider.dart';
import 'package:project/routes/routes.dart';
import 'package:project/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NextPhotoProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
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
      onGenerateRoute: _routes.onGeneraRoute,
      initialRoute: "/home",
    );
  }
}
