import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  bool isUpperCase = false,
  required Function()? function,
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
          color: color,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 18.0,
              bottom: 18.0,
            ),
            child: Text(
              isUpperCase ? text.toUpperCase() : text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          onPressed: function,
        ),
      ),
    );

Widget defaultTextFormField({
  required TextEditingController? controller,
  required TextInputType type,
  required String? Function(String? value)? functionValidation,
  required String labelText,
  required IconData prifixIcon,
  bool isPassword = false,
  IconData? suffix,
  Function()? suffixFunction,
  Function()? onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: functionValidation,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          prifixIcon,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixFunction,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
