import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/post/comment/comment_page.dart';
import 'package:clean/features/presentation/page/post/update_post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Image.asset(
          "assets/logoname.png",
          color: primaryColor,
          height: 100,
          width: 200,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(MaterialCommunityIcons.facebook_messenger,
                    color: primaryColor)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: seconaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    sizeHor(10),
                    const Text(
                      "Username",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                //! Bu UpdatePostPage ga o'tadi
                IconButton(
                    onPressed: () {
                      _showBottomModelSheet(context);
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      color: primaryColor,
                    )),
              ],
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              color: seconaryColor,
            ),
            sizeVer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite, color: primaryColor),
                    ),
                    sizeHor(10),
                    //!Bunda Comment page ga o'tadi
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageConst.commentPage);
                      },
                      icon: const Icon(Feather.message_circle,
                          color: primaryColor),
                    ),
                    sizeHor(10),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Feather.send, color: primaryColor),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.bookmark_border, color: primaryColor)),
              ],
            ),
            sizeVer(10),
            const Text(
              "34 likes",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
            ),
            sizeVer(10),
            Row(
              children: [
                const Text(
                  "Username",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                ),
                sizeHor(10),
                const Text(
                  "some description",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                )
              ],
            ),
            sizeVer(10),
            const Text(
              "View all 10 comments",
              style: TextStyle(
                color: darkGreyColor,
              ),
            ),
            sizeVer(10),
            const Text(
              "08/5/2022",
              style: TextStyle(
                color: darkGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showBottomModelSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(
              color: backGroundColor.withOpacity(.8),
            ),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "More Options",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: primaryColor),
                      ),
                    ),
                    sizeVer(8),
                    const Divider(
                      thickness: 1,
                      color: seconaryColor,
                    ),
                    sizeVer(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Delete Post",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    sizeVer(7),
                    const Divider(
                      thickness: 1,
                      color: seconaryColor,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const UpdatePostPage();
                        }));
                      },
                      child: const Text(
                        "Update Post",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    sizeVer(20),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
