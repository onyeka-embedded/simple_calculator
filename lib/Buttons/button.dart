import 'package:flutter/material.dart';

class Button extends StatelessWidget{


  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  Button({this.color, this.textColor, this.buttonText = '', this.buttonTapped});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 9, right: 8, left: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height/13,
            width: MediaQuery.of(context).size.width/5.5,
            color: color,
            child: Center(
              child: Text(buttonText,
                style: TextStyle(color: textColor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

}