// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
 
  bool isMale = true;
  double height = 120.0;
 int weight = 40;
 int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
    body: Column(
      children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
             children: [
               Expanded(
                 child: GestureDetector(
                   onTap: (){
                     setState(() {
                       isMale=true;
                     });

                   },
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0,),
                       color: isMale ? Colors.blue : Colors.grey[400],
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image(
                           image: AssetImage('images/male.png'),
                           height: 90.0,
                           width: 90.0,
                 
                         ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                       ],
                     ),
                   ),
                 ),
               ),
               SizedBox(
                 width: 20,

               ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: !isMale ? Colors.blue : Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image(
                           image: AssetImage('images/female.png'),
                           height: 90.0,
                           width: 90.0,
                  
                         ),
                       SizedBox(
                         height: 15,
                       ),
                       Text(
                         'Female',
                         style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                         ),
                       )
                        ],
                      ),
                    ),
                  ),
                ),


             ],
                   ),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.symmetric(
               horizontal: 20.0,
             ),
             child: Container(
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color:Colors.grey[400],
                      ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
               children:[
                 Text(
                           'HEIGHT',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                Row(
                  
    crossAxisAlignment: CrossAxisAlignment.baseline,
    mainAxisAlignment: MainAxisAlignment.center,
    textBaseline: TextBaseline.alphabetic,          
                  children: [
                     Text(
                           '${height.round()}',
                           style: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                          SizedBox(
                            width: 5.0,

                          ),
                          Text(
                           'CM',
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                  ],
                ),
               Slider(
                 value: height,
                 max: 220.0,
                 min: 80.0,
                  onChanged: (value){
                    setState(() {
                      height= value;
                    });
                  }
                  ),
               ],
                     ),
             ),
           ),
         ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                     decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:Colors.grey[400],
                          ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text(
                                 'WEIGHT',
                                 style: TextStyle(
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                        Text(
                                 '${weight}',
                                 style: TextStyle(
                                   fontSize: 40,
                                   fontWeight: FontWeight.w900,
                                 ),
                               ),
                            Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
    
                        },
    heroTag: 'w--',                    
                        mini: true,
                        child: Icon(
                          Icons.remove,
                        )
                        ),

                        FloatingActionButton(
                        onPressed: (){
                           setState(() {
                            weight++;
                          });
                        },
                        heroTag: 'w++', 
                        mini: true,
                        child: Icon(
                          Icons.add,
                        )
                        ),
                    ],
                            ),
                      ],
                    ),
                  ),
                ),
               SizedBox(
                 width: 20,
               ),
                Expanded(
                  child: Container(
                     decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:Colors.grey[400],
                          ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text(
                                 'AGE',
                                 style: TextStyle(
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                        Text(
                                 '${age}',
                                 style: TextStyle(
                                   fontSize: 40,
                                   fontWeight: FontWeight.w900,
                                 ),
                               ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            age--;
                          });
                        },
                        heroTag: 'a--', 
                        mini: true,
                        child: Icon(
                          Icons.remove,
                        )
                        ),
                        FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            age++;
                          });
                        },
                        heroTag: 'a++',
                        mini: true,
                        child: Icon(
                          Icons.add,
                        )
                        ),
                    ],
                            ),
                      ],
                    ),
                  ),
                ),
               
               
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
            onPressed: (){
              double result = weight / pow(height /100 , 2);
              Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => BMIResult(
                     age:age,
                     result: result.round(),
                     isMale: isMale,
                   ),
                   ),
                   );
            },
            height: 50.0,
            child: Text(
              'CALCULATE',
            ),
            ),
        ),
     
      ],
      ),
    );
  }
}