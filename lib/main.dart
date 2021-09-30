import 'package:flutter/material.dart';
import 'package:flutter_provider/data_model.dart';
import 'package:flutter_provider/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider <DataModel>(create: (context) => DataModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage()
      ),
    );
  }
}
