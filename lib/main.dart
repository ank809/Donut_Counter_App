import 'package:flutter/material.dart';
void main(){
  runApp(Donut_counter());
}
class Donut_counter extends StatefulWidget {
  const Donut_counter({super.key});

  @override
  State<Donut_counter> createState() => _Donut_counterState();
}

class _Donut_counterState extends State<Donut_counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar:AppBar(title: Text('Donuts eaten' , style: TextStyle(color: Colors.white), ) ,
         backgroundColor: Colors.blueGrey, ),
         backgroundColor: const Color.fromARGB(255, 14, 31, 39),
         body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Number of donuts eaten : $count',  style: TextStyle(color: Colors.white , fontSize: 30.0),),
                SizedBox(height: 18.0,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    count++;
                    print('No. of donuts eaten $count');
                  });
                }, child: Text('$count ' , style: TextStyle(fontSize: 20.0),),
                ),
              ],
            ),
           ),
         ),
      );
  }
  }