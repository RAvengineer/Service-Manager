import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  static const String id = "search_result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: SizedBox.fromSize(
            size: Size.square(100.0),
          ),
        ),
      ),
    );
  }
}
