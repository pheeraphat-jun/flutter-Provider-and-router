import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/secondProvider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  static const routeName = '/second';
  SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final secondprovider = Provider.of<SecondProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${secondprovider.text}",
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text(
                      "show text",
                    ),
                    onPressed: () {
                      secondprovider.settext();
                    },
                  ),
                  RaisedButton(
                    child: Text("clear text"),
                    onPressed: () {
                      secondprovider.cleartext();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
