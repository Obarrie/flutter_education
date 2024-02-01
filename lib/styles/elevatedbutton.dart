import 'package:flutter/material.dart';

        ElevatedButton mycustombutton({
          required BuildContext context,
          required String label,
          required VoidCallback onPressed,
          required Color buttonColor,
        }) {
          return ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: changeColor(buttonColor, Colors.white),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.05,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
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
  