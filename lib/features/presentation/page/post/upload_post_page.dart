import 'package:clean/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UploadPostPage extends StatelessWidget {
  const UploadPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: seconaryColor.withOpacity(.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.upload,
              color: primaryColor,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
