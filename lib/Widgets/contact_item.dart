import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({ required this.name, required this.number, required this.isvisible});
  final String name ;
  final String number;
  final bool isvisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isvisible,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
         borderRadius: BorderRadius.circular(40),
        ),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:$name',style: TextStyle(
              fontSize: 20,

            ),),
            Text('Phone:$number',style: TextStyle(
              fontSize: 20,
            )
              ,),
          ],
        ),
      ),
    );
  }
}
