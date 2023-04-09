import 'package:clean/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  Color? color;

  FormContainerWidget({
    super.key,
    this.controller,
    this.fieldKey,
    this.isPasswordField,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    color = Colors.white
  });

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  late bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: seconaryColor.withOpacity(.35),
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextFormField(
        style: const TextStyle(color: primaryColor),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obsecureText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: widget.helperText,
          hintStyle: TextStyle(color: widget.color),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obsecureText = !_obsecureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obsecureText ? Icons.visibility_off : Icons.visibility,
                    color: _obsecureText == false ? blueColor : seconaryColor,
                  )
                : const Text(" "),
          ),
        ),
      ),
    );
  }
}
