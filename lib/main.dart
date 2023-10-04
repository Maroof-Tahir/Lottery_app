import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('Khul Gya Number')),
        ),
        body: SafeArea(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              const Text('Tap the bottom below button',
              style: TextStyle(
                fontSize: 30,
                backgroundColor: Colors.lightGreenAccent,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
              const SizedBox(height:50),
              const Image(
                  width:380,
                  image:AssetImage('assets/lottery.jpg')),
              const SizedBox(height: 20,),
              const Center(child: Text('Your lottery winning Number is 4',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                  fontSize: 25,
                ) ,)),
              const SizedBox(height: 20),
              // Text(x > 5 ? 'X is greater than 5' : x.toString()),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: x==4?Colors.yellowAccent:Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child:Padding(
                  padding: EdgeInsets.all(7.0),
                  child:x==4? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.done_all, color: Colors.green, size: 65,),
                      const SizedBox(height: 15),
                      Text('$x\n',
                          textAlign: TextAlign.center,
                        style:const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const Text('Your number is match',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Tap to play Again',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          backgroundColor: Colors.black38,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ],
                  ):

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, color: Colors.red, size: 35,),
                      const SizedBox(height: 50),
                      Text('OOPS your number is--> $x\n',
                      textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          backgroundColor: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 20),
                      const Text('Try Again',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      backgroundColor: Colors.red,
                    ),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Press to play'),
          icon: Icon(Icons.play_arrow_outlined),
          onPressed: ((){
            x=random.nextInt(10);
            print(x);
            setState(() {

            });
          }),
          //child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}




