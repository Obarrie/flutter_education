import 'package:flutter/material.dart';
import 'package:flutter_education/question2.dart';
import 'package:flutter_education/styles/elevatedbutton.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final List<Color> _colors = [Colors.white, Colors.red, Colors.blue, Colors.green];
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: Container(
        color: _colors[_index % _colors.length],
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'What is your favorite color',
                style: TextStyle(fontSize: 30, color: Colors.purple),
                textAlign: TextAlign.center,
              ),
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Spacer(flex:1),
            mycustombutton(
              context: context,
              label: 'RED',
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              buttonColor: Colors.red,
            ),

            // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Spacer(flex: 1),
            mycustombutton(
              context: context,
              label: 'BLUE',
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
              buttonColor: Colors.blue,
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Spacer(flex: 1),
            mycustombutton(
              context: context,
              label: 'Green',
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
              buttonColor: Colors.green,
            ),

            const Spacer(flex: 2),
            Expanded(
              child: Center(
                child: mycustombutton(
                  context: context,
                  label: 'Reset',
                  onPressed: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  buttonColor: Colors.black,
                ),
              ),
            ),

            const Spacer(flex: 4),
            Expanded(
              child: Center(
                child: mycustombutton(
                  context: context,
                  label: 'Next',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Question2()),
                    );
                  },
                  buttonColor: Colors.blue,
                ),
              ),
            ),
            const Spacer(flex: 4),
            
          ],
        ),
      ),
    );
  }
}
                                                  //The container

//core of container is always the child -> padding(internal spacing in the container) -> Border(this is the border of the container, which you can see) 

  // ElevatedButton(
          //   style:             
          //   ButtonStyle(
          //   backgroundColor: changeColor(Colors.blue, Colors.white),
          //   ),
          //    onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Question2()),
          //     );
          //   },  
          //   // style: ElevatedButton.styleFrom(
          //   //   backgroundColor: const Color.fromARGB(255, 49, 4, 247),
          //   // ),//style - background color

          //   child: const Text(
          //     'Next question',
          //     style: TextStyle(
          //     fontSize: 25,
          //     color: Color.fromARGB(255, 254, 254, 254),
          //     ),
          //   ),
          // ),
           // ElevatedButton(
          // style:             
          //   ButtonStyle(
          //   backgroundColor: changeColor(Colors.blue, Colors.white),
          //   ),
          //   onPressed: (){
          //     setState(() {
          //       //isPressed = true;
          //       _index =0;
          //       _index=_index+2;
          //     });
          //       //isPressed = false;
          //   },
  
          //   // style: ElevatedButton.styleFrom(
          //   //   backgroundColor: const Color.fromARGB(255, 34, 0, 255),
          //   // ),//style - background color

          //   child: const Text(
          //     'Blue',
          //     style: TextStyle(
          //       fontSize: 25,
          //       color: Color.fromARGB(255, 248, 248, 248),
          //     ),

          //   ),
          // ), 
            // ElevatedButton(
          //   style:             
          //   ButtonStyle(
          //   backgroundColor: changeColor(Colors.red, Colors.white),
          //   ),
          //   onPressed: (){
          //     setState((){
          //         _index =0;
          //         _index++;
                
          //     });
               
          //   },   
          //  child: const Text(
          //     'RED',
          //     style: TextStyle(
          //     fontSize: 25,
          //     color: Color.fromARGB(255, 254, 254, 254),
          //     ),
          //   ),
          // ), // the child will hold the content inside the button. 
          


