import 'package:flutter/material.dart';
import 'package:service_manager/utilites/constants.dart';
import 'package:service_manager/widgets/train_details_column.dart';

class TrainDetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9.5)),
        color: Color(0x99FDFFFC),
      ),
      child: Row(
        children: <Widget>[
          TrainDetailsColumn("SIGN ON", "13:21", "KYN"),
          kVerticalBar,
          TrainDetailsColumn("SIGN OFF", "20:35", "KYN"),
          kVerticalBar,
          TrainDetailsColumn("DUTY HRS", "7.14", ""),
          kVerticalBar,
          TrainDetailsColumn("KMS", "156", ""),
          kVerticalBar,
          TrainDetailsColumn("NDH", "3:12", ""),
        ],
      ),
    );
  }
}
