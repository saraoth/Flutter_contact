import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ required this.label, required this.btnColor,required this.backgrd, required this.onPressed});
final String label;
final Color btnColor;
final Color backgrd;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){} //call back function
         ,
      style: ElevatedButton.styleFrom(
        padding:EdgeInsets.symmetric(vertical: 14) ,
        backgroundColor: backgrd,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: Text(label,
      style: TextStyle(
      color: btnColor,
        fontSize: 20,
      ),
      ),
    )


    ;

  }
}
