import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/credential/sign_up_page.dart';
import 'package:clean/features/presentation/widgets/button_container_widget.dart';
import 'package:clean/features/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
             flex: 2, child: Container(),
              
            ),
            Image.asset(
              "assets/logoname.png",
              color: primaryColor,
              height: 100, 
              width: 300,
            ),
            sizeVer(30),
             FormContainerWidget(
              helperText: "Email",
            ),
            sizeVer(15),
            FormContainerWidget(
              helperText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign In",
              onTapListener: () {},
            ),
            Flexible(
             flex: 2, child: Container(),
              
            ),
            const Divider(
              color: seconaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have and account? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: primaryColor),
                ),
                InkWell(
                  onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                  },
                  child: const Text(
                    "Sign Up.",
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
