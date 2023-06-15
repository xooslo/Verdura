import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:verdura/guidePage.dart';
import 'package:verdura/comunityPage.dart';
import 'package:verdura/marketPage.dart';
import 'package:url_launcher/url_launcher.dart';
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
      home: MainPage(),
      routes: {
        '/guide': (context) => guidePage(),
        '/comunity': (context) => comunityPage(),
        '/market': (context) => marketPage(),
        '/login': (context) => loginPage(),
      },
    );
  }
}

final dummyItems = [
  'assets/catWithPlant.jpg',
  'assets/plant_home_close.jpeg',
  'assets/plant_home.jpg',
  'assets/plant_home_2.jpg'
];

final dummyItems2 = [
  'http://file3.instiz.net/data/cached_img/upload/2019/04/03/0/88fcfb7eefdd127ba9013d1294ff8a17.jpg',
  'http://file3.instiz.net/data/cached_img/upload/2019/04/05/12/52f714faa9e90d2c4d483dba678bd718.jpg',
  'http://file3.instiz.net/data/cached_img/upload/2019/04/05/12/4fbf8364c252de14e4123a798a4d6ab3.jpg',
  'http://file3.instiz.net/data/cached_img/upload/2019/04/05/12/da42ac52aaf301f10a75002e4584f594.jpg',
  'http://file3.instiz.net/data/cached_img/upload/2019/02/07/5/6aa9314610ed6491ca497c1b3429149a.jpg'
];
Widget _buildMiddle() {
  return CarouselSlider(
    options: CarouselOptions(height: 150.0, autoPlay: true),
    items: dummyItems.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ));
        },
      );
    }).toList(),
  );
}
Widget _buildBottom() {
  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] `이달의 사진` 선정 기준 안내'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[공지] 커뮤니티 이용 수칙'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[공지] 식물마켓 이용 시 주의사항'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 6월 이달의 사진 당첨자 발표'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[공지] 5월 오류 업데이트 공지'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 5월 이달의 사진 당첨자 발표'),
      ),
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[공지] 홈 화면 디자인 변경 안내'),
      ),
    ],
  );
}


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            '이달의 사진',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          _buildMiddle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/login');
                      print(result);
                    },
                    icon: Icon(
                      Icons.forest,
                      color: Colors.black54,
                    ),
                    iconSize: 60,
                  ),
                  Text(
                    '식물 가이드',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(27, 107, 35, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/login');
                      print(result);
                    },
                    icon: Icon(
                      Icons.people_alt,
                      color: Colors.black54,
                    ),
                    iconSize: 60,
                  ),
                  Text(
                    '식물 커뮤니티',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(27, 107, 35, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/login');
                      print(result);
                    },
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.black54,
                    ),
                    iconSize: 60,
                  ),
                  Text(
                    '식물마켓',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(27, 107, 35, 1),
                    ),
                  )
                ],
              ),
            ],
          ),
          _buildBottom()],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '내 정보 수정하기',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CircleAvatar(
          child: Icon(
            Icons.person,
            size: 80,
            color: Colors.white,
          ),
          backgroundColor: Colors.grey,
          maxRadius: 50,
        ),
        TextButton(
            onPressed: () async {
              final result = await Navigator.pushNamed(context, '/login');
              print(result);
            },
            child: Text('프로필 사진 바꾸기', style: TextStyle(color: Colors.blue))),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(230, 50), //width, height
              backgroundColor: Color.fromRGBO(0, 0, 0, 1)
          ),
          onPressed: () async {
            final result = await Navigator.pushNamed(context, '/login');
            print(result);
          },
          child: Text('로그인'),
        ),
        SizedBox(
          height: 8,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(230, 50), //width, height
                backgroundColor: Color.fromRGBO(0, 0, 0, 1)
            ),
            onPressed: _launchUrl,
            child: Text('개발과정 보기')),
      ],
    );
  }
}
final Uri _url = Uri.parse('https://github.com/xooslo/Verdura');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  var _index = 0;

  var _pages = [
    Page1(),
    Page2(),
  ];
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  void initState() {
    super.initState();
    print('MainPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('MainPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Vedura',
            style: TextStyle(
              color: appbarColor,
            ),
          ),
          centerTitle: true,
        ),
        body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
              if (index == 1) {
                appbarColor = Colors.black;
              } else {
                appbarColor = Color.fromRGBO(27, 107, 35, 1);
              }
            });
          },
          currentIndex: _index,
          selectedItemColor: appbarColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: '내 정보'),
          ],
        ),
      ),
    );
  }
}
