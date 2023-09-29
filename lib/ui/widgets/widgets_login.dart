import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class MyTextInput extends StatelessWidget {
  const MyTextInput({super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
            controller: inputController,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              prefixIcon: const Icon(Icons.person),
              labelStyle: const TextStyle(color: Colors.black38),
              labelText: label,
            )
        ),
      ),
    );
  }
}



class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.lblText, required this.press});

  final Text lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500
          )
      ),
      child: lblText,
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      margin: const EdgeInsets.only(top: 0),
      padding: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
        color: Colors.white,

      ),
      child: child,
    );
  }
}