import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_manager/utilites/constants.dart';
import 'package:service_manager/widgets/common_appbar.dart';

class SearchResult extends StatefulWidget {
  static const String id = "search_result";

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  kSearchOptions _selectedOption = kSearchOptions.set_number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackground,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CommonAppBar(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(75.0),
                    topLeft: Radius.circular(75.0),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.only(top: 25.0),
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          activeColor: kActiveRadioButtonColor,
                          value: kSearchOptions.set_number,
                          groupValue: _selectedOption,
                          onChanged: (kSearchOptions value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        Expanded(
                          flex: 1,
                          child: const Text('Search Set Number'),
                        ),
                        Radio(
                          activeColor: kActiveRadioButtonColor,
                          value: kSearchOptions.train_number,
                          groupValue: _selectedOption,
                          onChanged: (kSearchOptions value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        Expanded(
                          flex: 1,
                          child: const Text('Search Set by Train Number'),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.red,
                      child: SizedBox.fromSize(
                        size: Size.square(100.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CommonAppBar(),
          ],
        ),
      ),
    );
  }
}
