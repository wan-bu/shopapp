import 'package:flutter/material.dart';
import 'package:shopapp/routes.dart';
import 'package:shopapp/screens/splash/splash_screen.dart';
import 'package:shopapp/theme.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop-App',
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
