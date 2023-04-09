import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/credential/sign_in_page.dart';
import 'package:clean/features/presentation/widgets/button_container_widget.dart';
import 'package:clean/features/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Image.asset(
              "assets/logoname.png",
              color: primaryColor,
              height: 100,
              width: 300,
            ),
            sizeVer(15),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: seconaryColor,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Image.asset("assets/person.png"),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -15,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            sizeVer(15),
            FormContainerWidget(
              helperText: "Username",
            ),
            sizeVer(15),
             FormContainerWidget(
              helperText: "Email",
            ),
            sizeVer(15),
            FormContainerWidget(
              helperText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            FormContainerWidget(
              helperText: "Bio",
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign Up",
              onTapListener: () {},
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
            const Divider(
              color: seconaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: primaryColor),
                ),
                InkWell(
                  onTap: () {
               Navigator.pushNamedAndRemoveUntil(context, PageConst.signInPage, (route) => false);
                  },
                  child: const Text(
                    "Sign In.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
