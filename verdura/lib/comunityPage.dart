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
      home: comunityPage(),
    );
  }
}

class comunityPage extends StatefulWidget {
  const comunityPage({Key? key}) : super(key: key);

  @override
  State<comunityPage> createState() => _comunityPageState();
}

class _comunityPageState extends State<comunityPage> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '커뮤니티 페이지 ok');
          },
          icon: Icon(
            Icons.navigate_before,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Verdura Comunity',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('칼라데아 잎 분리 도와주실 분 있나요'),
              subtitle: Text('2023년 06월 21일'),
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('소나무가 삐지면'),
              subtitle: Text('2023년 06월 20일'),
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('이번에 제옥 키우면서 느낀 점이'),
              subtitle: Text('2023년 06월 20일'),
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Text('ㅇㅇ'),
              title: Text('Test'),
              subtitle: Text('2023년 06월 05일'),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);
  var likes = 4;
  var icon = Icon(Icons.favorite_border);
  var ck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verdura Comunity',
          style: TextStyle(color: appbarColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '커뮤니티 페이지 ok');
          },
          icon: Icon(
            Icons.navigate_before,
            color: appbarColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              '칼라데아 잎 분리 도와주실 분 있나요',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                width: 500,
                child: Divider(color: Colors.green, thickness: 2.0)
            ),
            Text('ㅇㅇ | 2023.06.21                                                     좋아요 $likes 개',),
            Container(
                width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0)
            ),
            SizedBox(
              height: 20,
            ),
            Text('칼라데아 퓨전화이트 키우고 있는데 자꾸 초록잎이 나와서 분리가 어려워요..๐·°(৹˃̵﹏˂̵৹)°·๐'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    likes++;
                    if(ck == false){
                      icon = Icon(Icons.favorite);
                      likes = 5;
                      ck = true;
                    } else if(ck == true){
                      icon = Icon(Icons.favorite_border);
                      likes = 4;
                      ck = false;
                    }
                  });
                },
                child: icon
            )
          ],
        ),
      )
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);
  var likes = 13;
  var icon = Icon(Icons.favorite_border);
  var ck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Verdura Comunity',
            style: TextStyle(color: appbarColor),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '커뮤니티 페이지 ok');
            },
            icon: Icon(
              Icons.navigate_before,
              color: appbarColor,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                '소나무가 삐지면',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 500,
                  child: Divider(color: Colors.green, thickness: 2.0)
              ),
              Text('ㅇㅇ | 2023.06.20                                                    좋아요 $likes 개',),
              Container(
                  width: 500,
                  child: Divider(color: Colors.grey, thickness: 1.0)
              ),
              SizedBox(
                height: 20,
              ),
              Text('소나무가 삐지면 칫! 솔~ㅋㅋ'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      likes++;
                      if(ck == false){
                        icon = Icon(Icons.favorite);
                        likes = 14;
                        ck = true;
                      } else if(ck == true){
                        icon = Icon(Icons.favorite_border);
                        likes = 13;
                        ck = false;
                      }
                    });
                  },
                  child: icon
              )
            ],
          ),
        )
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);
  var likes = 6;
  var icon = Icon(Icons.favorite_border);
  var ck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Verdura Comunity',
            style: TextStyle(color: appbarColor),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '커뮤니티 페이지 ok');
            },
            icon: Icon(
              Icons.navigate_before,
              color: appbarColor,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                '이번에 제옥 키우면서 느낀 점이',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 500,
                  child: Divider(color: Colors.green, thickness: 2.0)
              ),
              Text('ㅇㅇ | 2023.06.20                                                    좋아요 $likes 개',),
              Container(
                  width: 500,
                  child: Divider(color: Colors.grey, thickness: 1.0)
              ),
              SizedBox(
                height: 20,
              ),
              Text('확실히 다육이 쪽이 키우기도 편하고 기여운거 가틈\n반박시 나말이 맞음'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      likes++;
                      if(ck == false){
                        icon = Icon(Icons.favorite);
                        likes = 7;
                        ck = true;
                      } else if(ck == true){
                        icon = Icon(Icons.favorite_border);
                        likes = 6;
                        ck = false;
                      }
                    });
                  },
                  child: icon
              )
            ],
          ),
        )
    );
  }
}
