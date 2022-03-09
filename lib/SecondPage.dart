import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Object? data=ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Second Screen Or Route"
        ),
      ),
      body: Column(
        children: [
          Text(data.toString())
          ,
          TextButton(onPressed:(){
         Navigator.pushNamed(context, '/');
          }
              , child:Text("Move to First Page")
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child:Text("pop to first page") )
        ],
      ),
    );
  }

}