import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quizz_model.dart';

void main() => runApp(MyApp());

QuizzBrain quizzBrain = QuizzBrain();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 10.0),
                child: QuizzPage()
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  @override
  Widget build(BuildContext context) {
    return Column(

       children: <Widget>[

         Expanded(
           flex: 5,
           child: Padding(
             padding: EdgeInsets.all(10.0),
             child: Center(
               child: Text(
                   'la question',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 25.0,
                   color: Colors.black
                 ),
               ),
             ),
           ),
         ),
         
         Expanded(
           child: Padding(
             padding: EdgeInsets.all(15.0),
             child: FlatButton(
               textColor: Colors.white,
               color: Colors.blue,
               child: Text('Vrai', style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
               ),),
               onPressed: () {
                 setState(() {
                   print("vrai");
                 });
               },
             ),
           ),
         ),

         Expanded(
           child: Padding(
             padding: EdgeInsets.all(15.0),
             child: FlatButton(
               textColor: Colors.white,
               color: Colors.red,
               child: Text('Faux', style: TextStyle(
                   fontSize: 20,
                   color: Colors.white
               ),),
               onPressed: () {
                    print('faux');
               },
             ),
           ),
         )


       ],

    );
  }
}
