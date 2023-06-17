import 'package:flutter/material.dart';
import 'package:verdura/guidePage.dart';
import 'package:verdura/comunityPage.dart';
import 'package:verdura/marketPage.dart';
import 'package:verdura/loginPage.dart';

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
      routes: {
        '/guide': (context) => guidePage(),
        '/comunity': (context) => comunityPage(),
        '/market': (context) => marketPage(),
        '/login': (context) => loginPage(),
        '/albo' : (context) => alboMonstera(),
      },
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
    print('GuidePage initState()');
  }

  @override
  void dispose(){
    super.dispose();
    print('GuidePage dispose()');
  }

  final dummyItems = [
    'assets/albo-monstera.jpeg',
    'assets/monstera.jpeg',
    'assets/caladea.jpeg',
    'assets/dayuk.jpeg',
    'assets/table-yaga.jpeg',
    'assets/table-yaga-2.jpeg',
  ];

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
              background: Image.asset('assets/forest.jpg', fit: BoxFit.cover,),
            ),
          ),
          SliverFillRemaining(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () async {
                        final result = await Navigator.pushNamed(context, '/albo');
                        print(result);
                        },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[2],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[3],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[4],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dummyItems[5],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}

class alboMonstera extends StatefulWidget {
  const alboMonstera({super.key});

  @override
  State<alboMonstera> createState() => _alboMonsteraState();
}

class _alboMonsteraState extends State<alboMonstera> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('알보 몬스테라 키우는 법', style: TextStyle(color: appbarColor),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, 'albo-momstera test');
          },
          icon: Icon(Icons.navigate_before),
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
