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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "التفاصيل"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text("التفاصيل",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.shortcut_outlined,color: Colors.lightGreen),iconSize: 20, onPressed: () {  },),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20,0),
          child :Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              )
          ),
          ),
           Padding(
             padding: EdgeInsets.fromLTRB(20, 25, 20,15),
             child:
             Text("مشاريع القطارات",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 30),),
           ),
          Text("تحول ضخم في مشاريع النقل العام، لإتاحة وسيلة مواصلات آمنة ومريحة وتسهيل حركة النقل للموظفين",),
       ]
      ),
    ),
    );
  }
}
