import 'package:flutter/material.dart';
import 'package:service_manager/widgets/common_appbar.dart';

class SearchResult extends StatelessWidget {
  static const String id = "search_result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: commonAppBar(context),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CommonAppBar(),
            Container(
              color: Colors.red,
              child: SizedBox.fromSize(
                size: Size.square(100.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
