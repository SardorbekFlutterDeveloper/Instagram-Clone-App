import 'package:clean/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text(
          "Activity",
          style: TextStyle(color: primaryColor),
        ),
      ),
      body: Center(
        child: Text(
          "Activity",
          style: TextStyle(color: primaryColor),
        ),
      ),
    );
  }
}
