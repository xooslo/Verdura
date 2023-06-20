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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: marketPage(),
    );
  }
}

class marketPage extends StatefulWidget {
  const marketPage({Key? key}) : super(key: key);

  @override
  State<marketPage> createState() => _marketPageState();
}

class _marketPageState extends State<marketPage> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, '마 페이지 ok');
          },
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
        title: Text('Verdura Market', style: TextStyle(color: appbarColor,),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('♡ 서비스 준비중 ♡',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: appbarColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
