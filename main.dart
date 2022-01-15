import 'package:flutter/material.dart';




void main() {
  runApp(
    Center(
      child:  MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,


      theme:  ThemeData(
          primarySwatch: Colors.green
      ),
      home:  counter_App(),
    );
  }
}
class counter_App extends StatefulWidget {
  @override
  CounterDemo createState() =>  CounterDemo();
}
class CounterDemo extends State< counter_App> {
  int num = 0;


  void Count_Up() {
    setState(() {
      num++;
    });
  }


  void Count_down() {
    setState(() {
      num=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title:  Text(" Counter App" ),






        centerTitle: true,
      ),
      //backgroundColor: Colors.grey[300],
      body:  Container(
        //color: Colors.brown,




        // child:  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[



               Container(
                 color: Colors.white,
                 width: 300,
                 child:Center(
                   child: Text('$num',


                     style:  TextStyle(fontSize: 100.0,),) ,
                 )
               ),



               Row(
                 children: [
                   SizedBox(width: 70,),
                   Expanded(child:
               SizedBox(
               width: 500.0,
                 height: 300.0,
                 child:FloatingActionButton (




                   onPressed: Count_Up,
                   child:  Icon(Icons.add, color: Colors.white,size: 60,),
                   backgroundColor: Colors.green,)
               )
                   ,),
                   SizedBox(width: 10,),
                   // ignore: prefer_const_constructors
                   Expanded(child:FloatingActionButton(


                    onPressed:() {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            // title: Text('D'),
                            content: Text('Are you sure  to reset the counter?'),
                            actions:  [
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      num=0;
                                      Navigator.pop(context);
                                    });

                                  },
                                  child: Text("Reset counter"))
                            ],
                          )
                      );
                    },

                     // onPressed: Count_down,
                     child:  Text(''),
                     backgroundColor: Colors.green,),





                   )

                   
                 ],
               ),






            ],
          ),
        ),
      // ),
    );
  }
}

