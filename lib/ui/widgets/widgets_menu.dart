import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.lblText, required this.press});

  final String lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press, // La función que se ejecutará cuando se presione el "enlace"
      child: Text(
        lblText,
        style: TextStyle(
          color: Colors.white, // Color del texto similar a un enlace
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        //textAlign: TextAlign.left,
      ),
    );
  }
}

class MyText extends StatelessWidget {
  MyText({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 800,
      width: 300,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.blue[800], // Azul más oscuro

      ),
      child: child,
    );
  }
}

