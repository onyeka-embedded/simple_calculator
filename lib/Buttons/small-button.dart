import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget{


  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  SmallButton({this.color, this.textColor, this.buttonText = '', this.buttonTapped});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height/19.5,
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