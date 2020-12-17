import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/homeProvider.dart';
import 'package:flutter_provider/provider/secondProvider.dart';
import 'package:flutter_provider/screen/homescreen.dart';
import 'package:flutter_provider/screen/secondscreen.dart';
import 'package:flutter_provider/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
        providers: [
          Provider(create: (_) => HomeProvider()),
          ChangeNotifierProvider(
            create: (_) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => SecondProvider(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: HomeScreen == null
                ? SplashScreen.routeName
                : HomeScreen.routeName,
            routes: {
              HomeScreen.routeName: (context) => HomeScreen(),
              SecondScreen.routeName: (context) => SecondScreen(),
            }));
  }
}
