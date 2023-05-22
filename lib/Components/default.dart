
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required  TextInputType type,
  required  Function validator,
  required Function onTap,
  required Function onChange,
  required String label,
  required IconData prefix,
}) {
  return TextFormField(
    onTap: onTap(),
    controller: controller,
    keyboardType: type,
    onChanged: onChange(),
    obscureText: false,
    onFieldSubmitted: (value) {
      print(value);
    },
    decoration: InputDecoration(
      prefixIcon: Icon(prefix),
      labelText: label,
      border: const OutlineInputBorder(),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return 'Form must not be empty !';
      } else {
        return null;
      }
    },
  );
}



Widget defaultbutton(
    double width,
    double height,
    String text,
    Color color,
    Color colortext,
    double fontsize,
    Function onTap,
    ) =>
    GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: colortext,
                fontWeight: FontWeight.w600,
                fontSize: fontsize),
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

