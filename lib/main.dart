import 'package:flutter/material.dart';
import 'package:service_manager/screens/search_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchResult(),
      routes: {
        SearchResult.id: (context) => SearchResult(),
      },
    );
  }
}
