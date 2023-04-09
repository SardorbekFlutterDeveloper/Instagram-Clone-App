import 'package:clean/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: seconaryColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: primaryColor),
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: seconaryColor, fontSize: 15)),
      ),
    );
  }
}
