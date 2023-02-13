import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class input_widget extends StatelessWidget {
  const input_widget({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.labelText,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final TextInputType textInputType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: textInputType,
        // autofocus: true,
        style: TextStyle(),
        textAlign: TextAlign.center,
        // textInputAction: TextInputAction.next,

        inputFormatters: TextInputType.phone != textInputType
            ? []
            : <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            // enabledBorder: InputBorder.none,
            // border: InputBorder.none,
            // prefixIcon: const Icon(
            //   Icons.email_outlined,
            //   size: 20,
            // ),
            border: OutlineInputBorder(
              // gapPadding: 1,
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            // hintStyle: TextStyle(color: Colors.grey[800]),

            // hintText: "Type in your text",

            // label: Text("data"),

            labelText: labelText,
            alignLabelWithHint: false,
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            labelStyle: TextStyle(),
            hintTextDirection: TextDirection.ltr,
            fillColor: Colors.white70),
      ),
    );
  }
}
