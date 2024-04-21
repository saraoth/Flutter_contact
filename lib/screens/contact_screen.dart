import 'package:contacts/Widgets/contact_item.dart';
import 'package:contacts/Widgets/custom_button.dart';
import 'package:contacts/Widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ContactScreen  extends StatelessWidget {
static const String routeName='';

  @override
  Widget build(BuildContext context) {
    var namecontroller = TextEditingController();
    var phonecontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(127, 93, 134, 86) ,
    title: Text('Contact Screen ',),
        centerTitle: true,
      ),

      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomTextField(hintText: 'Enter your name ',icon:Icons.edit, controller: namecontroller , ),
            CustomTextField(hintText: 'Enter your phone num',icon: Icons.phone, controller: phonecontroller),
            SizedBox(height: 20 ,),
            Row(
              children: [
                Expanded(child:
                CustomButton(label: 'Add', btnColor:Colors.white,backgrd: Colors.brown, onPressed: addItem
                ,)),

                SizedBox(width: 4,),

                Expanded(child:
                CustomButton(label: 'Delete',btnColor: Colors.white,backgrd: Colors.red, onPressed: deleteItem,)),
              ],
            ),
            SizedBox(height: 20 ,),
            ContactItem(name: 'Sarah',number: '0215494664456', isvisible:true ,),
            ContactItem(name: 'Sarah',number: '0215494664456', isvisible: true,),
            ContactItem(name: 'Sarah',number: '0215494664456', isvisible: true,),

          ],
        ),
      ),

    );
  }
  addItem(){}
  deleteItem(){}


}
