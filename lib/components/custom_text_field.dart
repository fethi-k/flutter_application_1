import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final double horizontalPadding;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextField({super.key, this.hintText='', this.horizontalPadding=0,  this.obscureText=false, required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary,),
        ),
      ),
    );
  }
}