import 'package:flutter/material.dart';
import 'package:hw_6/data/databeas.dart';

// Define a custom widget that takes a TextEditingController as a parameter
class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final TextEditingController? controller;
  final TextEditingController? controllername;
  final TextEditingController? controlleremail;

  final int number;
  final String text;

  const CustomButton({
    Key? key,
    required this.callback,
    required this.controller,
    required this.number,
    required this.text,
    required this.controlleremail,
    required this.controllername,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Call the callback function
        callback();
        if (number == 1) {
          // Clear the text field using the controller
          controller?.clear();
        } else if (number == 2) {
          ContactInfoGetStorge().addContactInfoToList(
              name: controllername!.text.toString(),
              email: controlleremail!.text.toString());
          controllername?.clear();
          controlleremail?.clear();
        } else {
          ContactInfoGetStorge().deleteContactInfoFromList();
        }
      },
      child: Text(text),
    );
  }
}
