import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/profile/widget/profile_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Text("Edit Profile"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 32,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done,
                color: blueColor,
                size: 32,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: seconaryColor,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
              sizeVer(15),
              const Center(
                child: Text(
                  "Change profile photo",
                  style: TextStyle(
                      color: blueColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Name",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Username",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Website",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Bio",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
