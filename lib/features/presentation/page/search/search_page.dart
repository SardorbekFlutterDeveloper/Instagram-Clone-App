import 'package:clean/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "../search/widget/search_widget.dart";

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(
                  controller: _searchController,
                ),
                sizeVer(10),
                GridView.builder(
                  itemCount: 32, 
                  physics: const ScrollPhysics(), 
                  shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100, 
                        height: 100, 
                        color: seconaryColor, 
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
