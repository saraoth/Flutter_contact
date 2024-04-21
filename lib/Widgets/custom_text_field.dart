import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hintText, required this.icon, required this.controller });
   final String hintText;
   final IconData icon;
   final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller:controller,  //to get data from the user
        decoration:InputDecoration(
          fillColor: Colors.white60,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28)
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.brown,
          ),

          suffixIcon: Icon(
            icon,
            color: Colors.brown,
          ),

        )
        ,
      ),
    );
  }
}
