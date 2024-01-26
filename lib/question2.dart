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
        body: SingleChildScrollView(
          child:  Center(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,//Column widget is there to make widgets into a column. this widget takes in an argument called children which
              children:[ 
              const SizedBox(height: 20),
              //const Expanded(
                const Text(
                  'What is your favorite animal',
                  style: TextStyle(fontSize: 30, color:Colors.purple),
                  textAlign: TextAlign.center,
                ),// takes in a list of widgets
              //),

                // Expanded(
                //   flex: 6,
                //   child: Center(
               SizedBox(height: MediaQuery.of(context).size.height*0.03),
               // TODO: Sizedbox to spacer widget
                  //Spacers take flex sizes
                   // - Wrap my custombutton in the expanded

                 //Expanded(   
                   //child:Center(
                    mycustombutton(
                        label: 'DOG', 
                        onPressed: (){
                          setState((){
                            _index = 1;
                          });
                        }, 
                        buttonColor: Colors.orange,
                      ),
                   //)
                 //),

                   SizedBox(height: MediaQuery.of(context).size.height*0.03),
                    //Expanded(
                       //child:Center(
                        mycustombutton(
                              label: 'CAT', 
                              onPressed: (){
                                setState((){
                                  _index = 2;
                                });
                              }, 
                              buttonColor: Colors.purple,
                            ),
                       //)
                    //),

                // Spacer(flex:1),
                // Expanded(flex:5)
                
                //Wont work until you take out size boxes and other hardcoded sizes

                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                    // Expanded(
                    //   child: Center(
                      mycustombutton(
                          label: 'BIRD', 
                          onPressed: (){
                            setState((){
                              _index = 3;
                            });
                          }, 
                          buttonColor: Colors.red,
                        ),
                    //   )
                    // ),

                 

                 SizedBox(height: MediaQuery.of(context).size.height*0.03),
                  // Expanded(
                  //   child:Center(
                    mycustombutton(
                        label: 'OTHER', 
                        onPressed: (){
                          setState((){
                            _index = 4;
                          });
                        }, 
                        buttonColor: Colors.green,
                      ),
                  //   )
                  // ),

                         
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                  Text( _sounds[_index % _sounds.length],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 245, 7, 7),
                          fontSize: 40,
                        ),
                      ), 

                  Image(
                    // image: AssetImage('assets/images/dog.jpeg'),
                    image: AssetImage(_images[_index % _images.length]),
                    height: 160,
                    width: 200,   
                  ),   

                
                  //Expanded(
                    //child: Center(
                  SizedBox(height: MediaQuery.of(context).size.height*0.2),
                      mycustombutton(
                          label: 'BACK', 
                          onPressed: (){
                             Navigator.pop(context,);
                          }, 
                          buttonColor: Colors.blue,
                        ),
                     // )
                    //),

                 ],
                )
              ),
            )
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
  // Make class that has all buttons and then import that into the files where I am using the buttons DONE
  // Then just call the buttons based on how you need them. DONE
