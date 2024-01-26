import 'package:flutter/material.dart';

ElevatedButton mycustombutton({
    required String label, 
    required VoidCallback onPressed, 
    required Color buttonColor
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: changeColor(buttonColor, Colors.white),
      //   fixedSize: MaterialStateProperty.all<Size>(
      //   const Size(150, 50),
      // ),
    ),
      child: Text(
        label,
        style: const TextStyle(
          // fontSize: 25,
        ),
      ),
    );
  }


  MaterialStateProperty <Color> changeColor(Color color, Color color2) {
    changeColor(Set<MaterialState> states){
      if (states.contains(MaterialState.pressed)){
        return color2;
      }else{
        return color;
      } 
    }
    return MaterialStateProperty.resolveWith(changeColor);
}
  