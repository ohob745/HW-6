// import 'package:flutter/material.dart';
// import 'package:hw_6/custom_button.dart';
// import 'package:hw_6/custom_text_field.dart';

// class FormData extends StatefulWidget {
//   FormData({Key? key}) : super(key: key);

//   @override
//   State<FormData> createState() => _FormDataState();
// }

// class _FormDataState extends State<FormData> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.5,
//       width: MediaQuery.of(context).size.width,
//       color: Colors.blue,
//       child: Center(
//         child: Form(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomTextField(
//                 controller: nameController,
//                 name: "Enter the name",
//               ),
//               CustomTextField(
//                 controller: emailController,
//                 name: "Enter the email",
//               ),
//               CustomButton(callback: (){
//                 nameController.clear();
//                 emailController.clear();
//               setState(() {

//               });}),
//               // Add a reset button below the custom button
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hw_6/custom_button.dart';
import 'package:hw_6/custom_text_field.dart';

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Create a TextEditingController for the text field
  final TextEditingController nameFieldController = TextEditingController();
  final TextEditingController emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.55,
       width: MediaQuery.of(context).size.height*0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomTextField(
                controller: nameFieldController, name: "enter the name"),SizedBox(height: 20,),
            // Add a custom button with the controller and a callback function
            CustomButton(
              number: 1,
              controller: nameFieldController,
              callback: () {
                // Do something when the button is pressed
                print('Button pressed');
              },
              text: 'clear',
              controlleremail: null,
              controllername: null,
            ),SizedBox(height: 20,),CustomTextField(
                controller: emailFieldController, name: "enter the email"),
            // Add a custom button with the controller and a callback function
            SizedBox(height: 20,),CustomButton(
              number: 1,
              controller: emailFieldController,
              callback: () {
                // Do something when the button is pressed
                print('Button pressed');
              },
              text: 'clear',
              controlleremail: null,
              controllername: null,
            ),
            // Add a text field with the controller
            SizedBox(height: 20,),
            
            CustomButton(
              number: 2,
              controlleremail: emailFieldController,
              controllername: nameFieldController,
              callback: () {
                // Do something when the button is pressed
                print('Button add');
              },
              controller: null,
              text: 'add',

              
            ),SizedBox(height: 20,),
                        CustomButton(
              number: 3,
              callback: () {
                // Do something when the button is pressed
                print('Button clear');
              },
              controller: null,
              text: 'clear list', controlleremail: null, controllername: null,

              
            ),
          ],
        ),
      ),
    );
  }
}
