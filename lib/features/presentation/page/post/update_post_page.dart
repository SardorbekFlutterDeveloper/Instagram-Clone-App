import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/profile/widget/profile_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UpdatePostPage extends StatefulWidget {
  const UpdatePostPage({super.key});

  @override
  State<UpdatePostPage> createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Text("Edit Post"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.done, color: blueColor , size: 28,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: seconaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              sizeVer(10),
              const Text(
                "Username",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              sizeVer(10.0),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: seconaryColor,
                ),
              ),
              sizeVer(10.0),
              const ProfileFormWidget(
                title: "Description",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
