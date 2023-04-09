import 'package:clean/consts.dart';
import 'package:clean/features/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  bool _isUserReplaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Comments"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: seconaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    sizeHor(8),
                    const Text(
                      "Username",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 15,
                      ),
                    ),
                    sizeHor(10),
                  ],
                ),
                sizeVer(10),
                const Text(
                  "This is very beautiful place",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          sizeVer(10),
          const Divider(
            color: seconaryColor,
          ),
          sizeVer(10),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: seconaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  sizeHor(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      sizeVer(4),
                      const Text(
                        "This is comment",
                        style: TextStyle(
                          fontSize: 12,
                          color: primaryColor,
                        ),
                      ),
                      sizeVer(4),
                      // ! Commentariyaga javob beradigan TextButtonlar
                      Row(
                        children: [
                          const Text(
                            "08/07/2022",
                            style: TextStyle(
                              color: darkGreyColor,
                              fontSize: 12,
                            ),
                          ),
                          sizeHor(15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isUserReplaying = !_isUserReplaying;
                              });
                            },
                            child: const Text(
                              "Replay",
                              style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          sizeHor(15),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View Replays",
                              style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      _isUserReplaying == true ? sizeVer(10) : sizeVer(0),
                      _isUserReplaying == true
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FormContainerWidget(
                                  // hintText: "Post your replay...",
                                  color: seconaryColor,
                                ),
                                // sizeVer(10),
                                TextButton(
                                  onPressed: (){},
                                  child: const Text(
                                    "Post",
                                    style: TextStyle(color: blueColor),
                                  ),
                                )
                              ],
                            )
                          : Container(
                              width: 0,
                              height: 0,
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _commentSection()
        ],
      ),
    );
  }

  _commentSection() {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: seconaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            sizeHor(10),
            Expanded(
              child: TextFormField(
                style: const TextStyle(color: primaryColor),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Post your comment...",
                  hintStyle: TextStyle(
                    color: seconaryColor,
                  ),
                ),
              ),
            ),
            const Text(
              "Post",
              style: TextStyle(fontSize: 15, color: blueColor),
            ),
          ],
        ),
      ),
    );
  }
}
