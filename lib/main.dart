import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Assignment5(),
    );
  }
}
class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assignement 5"),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,left: 20,right: 20),
            padding: EdgeInsets.all( 16),
            decoration: BoxDecoration(
              color: Colors.purple.shade50,
            ),
            child: Row(
              children: [
                Icon(Icons.person,color: Colors.purple,size: 16,),
                Text("Suresh Mandvekar",style: TextStyle(color: Colors.purple.shade400,fontSize: 16),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

