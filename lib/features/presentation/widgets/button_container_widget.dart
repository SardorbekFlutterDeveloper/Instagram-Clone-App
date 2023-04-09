import 'package:clean/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;

  const ButtonContainerWidget(
      {super.key, this.color, this.text, this.onTapListener});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapListener,
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(3)),
          child: Center(
            child: Text(
              text.toString(),
              style:
                  const TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
