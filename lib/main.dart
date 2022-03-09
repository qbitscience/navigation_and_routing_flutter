import 'package:flutter/material.dart';
import 'package:navigation_and_routing_flutter/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation And Routing',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes:{
        '/':(context)=>MyHomePage(),
        '/secondPage':(context)=>SecondPage(),

      }
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Screen Or Route"
        ),
      ),
      body: Column(
        children: [
          TextButton(onPressed:(){
          //  Navigator.pushNamed(context, '/secondPage');
            
           Navigator.pushNamed(context, '/secondPage',
               arguments: ("Hello from first screen"));
          }
          , child:Text("Move to Second Page"))
        ],
      ),
    );

  }
}
