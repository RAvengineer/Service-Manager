import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_manager/screens/get_location.dart';
import 'package:service_manager/utilites/constants.dart';
import 'package:service_manager/widgets/appbar_icon.dart';
import 'package:service_manager/widgets/common_appbar.dart';
import 'package:service_manager/widgets/train_details_container.dart';

class SearchResult extends StatefulWidget {
  static const String id = "search_result";

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  kSearchOptions _selectedOption = kSearchOptions.set_number;
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackground,
      floatingActionButton: Container(
        height: 93.0,
        width: 92.0,
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          backgroundColor: Color(0x2B9D9C98),
          elevation: 1.0,
          child: Image.asset(
            'assets/images/Raster_3.png',
            color: Color(0xFF8080C5),
            height: 50.0,
            width: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, GetLocation.id);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CommonAppBar(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35.0,
                        vertical: 8.0,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {
                          searchText = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter the respective number',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0x70011627), width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0x70011627), width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(17.5)),
                        color: Color(0x3B505FE1),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              TrainDetailsContainer(),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.5)),
                                    color: Color(0x99FDFFFC),
                                  ),
                                  child: Text(
                                    "232",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.5,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3.0,
                              vertical: 5.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.5)),
                              color: Color(0x99FDFFFC),
                            ),
                            child: Table(
                              border: TableBorder(
                                verticalInside: BorderSide(
                                  color: Color(0xFF505FE1),
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    Text(
                                      "TRAIN NO",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "START",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "CHANGE",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text("S 90001"),
                                    Text("KYN\n13:56"),
                                    Text("CSMT\n15:24"),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text("F 90002"),
                                    Text("CSMT\n13:41"),
                                    Text("ASO\n19:23"),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text("S 90001"),
                                    Text("ASO\n19:43"),
                                    Text("KYN\n20:20"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: RawMaterialButton(
                                  onPressed: () => {},
                                  child: Container(
                                    height: 48.0,
                                    alignment: Alignment.center,
                                    color: Color(0xFF8FB339),
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/images/Raster_9.png',
                                          height: 24.0,
                                          width: 24.0,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Add to Roaster',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Expanded(
                                child: RawMaterialButton(
                                  onPressed: () => {},
                                  child: Container(
                                    height: 48.0,
                                    alignment: Alignment.center,
                                    color: Color(0xFFF95F62),
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/images/Raster_10.png',
                                          height: 24.0,
                                          width: 24.0,
                                        ),
                                        Text(
                                          'SET REMINDER',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 69.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              color: Color(0xFF9A1518),
              child: Row(
                children: <Widget>[
                  AppBarIcon(
                    filename: 'assets/images/Raster_4.png',
                    color: Colors.white,
                  ),
                  AppBarIcon(
                    filename: 'assets/images/Raster_6.png',
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 92.0,
                  ),
                  AppBarIcon(
                    filename: 'assets/images/Raster_5.png',
                    color: Colors.white,
                  ),
                  AppBarIcon(
                    filename: 'assets/images/Raster_7.png',
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
