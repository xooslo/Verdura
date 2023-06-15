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
      home: guidePage(),
    );
  }
}

class guidePage extends StatefulWidget {
  const guidePage({Key? key}) : super(key: key);

  @override
  State<guidePage> createState() => _guidePageState();
}

class _guidePageState extends State<guidePage> {
  @override
  void initState(){
    super.initState();
    print('SecondPage initState()');
  }

  @override
  void dispose(){
    super.dispose();
    print('SecondPage dispose()');
  }

  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context, '가이드 페이지 ok');
              },
              icon: Icon(Icons.navigate_before),
            ),
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Verdura Guide', style: TextStyle(color: Colors.white,),),
              centerTitle: true,
              background: Image.network('https://img.freepik.com/free-photo/aerial-view-of-green-forest_144627-45271.jpg', fit: BoxFit.cover,),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [

              ],
            )
          ),
        ],
      ),
    );
  }
}
