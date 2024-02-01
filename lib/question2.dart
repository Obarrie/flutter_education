// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_education/styles/elevatedbutton.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  final List<String> _sounds = ['woof woof', 'meoww meoww', 'tweet tweet', 'use imagination'];
  final List<String> _images = ['assets/images/dog.jpeg', 'assets/images/cat.jpeg', 'assets/images/bird.jpeg','assets/images/allanimals.jpg'];
  var _index = 0;
  //Widget? _imageWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ 
            const SizedBox(height: 20),
            const Text(
              'What is your favorite animal',
              style: TextStyle(fontSize: 30, color:Colors.purple),
              textAlign: TextAlign.center,
            ),

            const Spacer(flex:1),
            mycustombutton(
              context:context,
              label: 'DOG', 
              onPressed: (){
                setState((){
                  _index = 0;
                });
              }, 
              buttonColor: Colors.orange,
            ),

            const Spacer(flex:1),
            mycustombutton(
              context:context,
              label: 'CAT', 
              onPressed: (){
                setState((){
                  _index = 1;
                });
              }, 
              buttonColor: Colors.purple,
            ),

            const Spacer(flex: 1),
            mycustombutton(
              context:context,
              label: 'BIRD', 
              onPressed: (){
                setState((){
                  _index = 2;
                });
              }, 
              buttonColor: Colors.red,
            ),

            const Spacer(flex: 1),
            mycustombutton(
              context:context,
              label: 'OTHER', 
              onPressed: (){
                setState((){
                  _index = 3;
                });
              }, 
              buttonColor: Colors.green,
            ),

            const Spacer(flex: 3),
            Text(
              _sounds[_index % _sounds.length],
              style: const TextStyle(
                color: Color.fromARGB(255, 245, 7, 7),
                fontSize: 40,
              ),
            ), 
            Image(
              image: AssetImage(_images[_index % _images.length]),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            
            const Spacer(flex: 2),
            mycustombutton(
              context:context,
              label: 'BACK', 
              onPressed: (){
                Navigator.pop(context,);
              }, 
              buttonColor: Colors.blue,
            ),
             const Spacer(flex: 1),

          ],
        ),
      ),
    );
  }
}

                    // ElevatedButton(
                    //   onPressed: (){
                    //       setState((){
                    //         _index =1;
                    //         //_index++;
                    //         //Image.asset(_images[_index]);
                    //       });
                          
                    //   },  
                    //         style:             
                    //           ButtonStyle(
                    //             backgroundColor: changeColor(const Color.fromARGB(255, 239, 142, 5), Colors.white),
                    //             fixedSize: MaterialStateProperty.all<Size>(
                    //               const Size(150, 50),
                    //             ),
                    //           ),
                    //         // style: ElevatedButton.styleFrom(
        
                    //   //   backgroundColor: const Color.fromARGB(255, 247, 117, 4),
                    //   // ),//style - background color
                    //   child: const Text('Dog',
                    //     style: TextStyle(
                    //     fontSize: 25,
                    //     ),
                    //   ),
                    // ),
                 
                 
                    // ElevatedButton(
                    //    onPressed: (){
                    //       setState((){
                    //         _index =2;
                    //         //_index+=2;
                    //         //Image.asset(_images[_index]);
                    //       });
                    //     },  

                    //    style:             
                    //       ButtonStyle(
                    //         backgroundColor: changeColor(const Color.fromARGB(255, 93, 54, 236), Colors.white),
                    //         fixedSize: MaterialStateProperty.all<Size>(
                    //           const Size(150, 50),
                    //         ),
                    //       ),
                    //     child: const Text('Cat',
                    //     style: TextStyle(
                    //     fontSize: 25,
                    //     ),
                    //   ),
                    // ), 

            

            // Adjust the height as needed

                    // ElevatedButton(
                    //    onPressed:() {
                    //       setState(() {
                    //       _index=3;
                    //       //_index=_index+3;
                    //       //Image.asset(_images[_index]);
                    //     });
                    //   },

                    //   style: 
                    //     ButtonStyle(
                    //       backgroundColor: changeColor(Colors.red, Colors.white),
                    //       fixedSize: MaterialStateProperty.all<Size>(
                    //         const Size(150, 50),
                    //       ),
                    //     ),

                    //   child: const Text('Bird',
                    //     style: TextStyle(
                    //     fontSize: 25,
                    //     ),
                    //   ),
                    // ),



                    // ElevatedButton(
                    //   onPressed:() {
                    //     setState(() {
                    //       _index=4;
                    //       //_index=_index+4;
                    //       //Image.asset(_images[_index]);
                    //     });
                    //   },

                    //   style: 
                    //     ButtonStyle(
                    //       backgroundColor: changeColor(Colors.yellow, Colors.white),
                    //       fixedSize: MaterialStateProperty.all<Size>(
                    //         const Size(150, 50),
                    //       ),
                    //     ),

                    //   child: const Text('other',
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 25,
                        
                    //     ),
                    //   ),
                    // ),

                  

                  
                  // ElevatedButton(
                  //   onPressed:(){
                  //     Navigator.pop(context,);
                  //   },
                  //     style: 
                  //       ButtonStyle(
                  //         backgroundColor: changeColor(Colors.blue, Colors.white),
                  //         fixedSize: MaterialStateProperty.all<Size>(
                  //           const Size(150, 50),
                  //         ),
                  //       ),
                  //     child: const Text('back',
                  //       style:TextStyle(
                  //         fontSize: 15,
                  //       ),
                  //     ),
                  // ),

//TODO:
//1. Work on understanding spacer and expanded
//2. Run app on android and understand using the emulator

