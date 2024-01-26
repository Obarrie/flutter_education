import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  const Answer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 239, 6, 6),
          ), //style - background color
          child: const Text(
            'RED',
            style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ), // the child will hold the content inside the button. 
    );
  }
}

