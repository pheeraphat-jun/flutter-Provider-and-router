import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/homeProvider.dart';
import 'package:flutter_provider/screen/secondscreen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeprovider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${homeprovider.text}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            RaisedButton(
              child: Text("Go to SecondScreen"),
              onPressed: () =>
                  Navigator.pushNamed(context, SecondScreen.routeName),
            )
          ],
        )),
      ),
    );
  }
}
