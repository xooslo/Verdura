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
    'assets/dayuk.png',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            AlboMonstera()));
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
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Monstera()));
                      },
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
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Caladea()));
                      },
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
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Dayuk()));
                      },
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
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            TableYaga()));
                      },
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
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Yaga()));
                      },
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

class AlboMonstera extends StatefulWidget {
  const AlboMonstera({super.key});

  @override
  State<AlboMonstera> createState() => _AlboMonsteraState();
}

class _AlboMonsteraState extends State<AlboMonstera> {
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
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/albo-monstera.jpeg',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '알보 몬스테라',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '몬스테라 알보 바리에가타',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('알보 몬스테라란?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text('알보 몬스테라는 유전적인 변이로 인해 초록색을 띠는 엽록소가 없이 부분 부분마다 하얀 무늬가 생긴 변이종이에요. 인위적으로는 만들어 낼 수 없고, 수입도 금지되어 있어 희소성이 높아 아주 비싼 가격을 형성하고 있답니다. `식테크`, `무천이(무늬천재)`,\n `알보몬` 등의 많은 신조어를 만들어 낸 장본인인 알보 몬스테라는 흰 부분이 많을수록 햇빛을 흡수하여 필요한 양분을 만들어내는 광합성작용을 잘 하지 못하기 때문에 일반 몬스테라보다 더 많은 빛을 필요로 해요. 또한 온도와 습도에도 아주 예민한 아이라 많은 식집사들의 애간장을 태우기도 한답니다. 알보 몬스테라는 배수가 아주 잘 되는 토양에 심어주시고, 창문을 거친 밝은 간접광이 드는 따뜻한 곳에서 공기를 촉촉하게 유지해주면서 키워주셔야 한답니다. 잎 크기를 크게 키우시고 싶다면 수태봉의 도움을 받아보세요. 더 튼튼한 잎으로 성장할 수 있답니다.',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('알보 몬스테라 관리를 위한 팁', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text('1. 물은 평균 주 1~2회, 흙 표면부터 3cm까지 마르면 듬뿍 주세요\n \n2. 반양지 식물으로 하루 2~3시간 정도의 은은한 햇빛이 필요해요\n \n3. 권장 습도는 70% 이상으로 주변 공기를 촉촉하게 관리해주세요\n \n4. 20~25℃의 온도에서 잘 자라요', style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Monstera extends StatefulWidget {
  const Monstera({super.key});

  @override
  State<Monstera> createState() => _MonsteraState();
}

class _MonsteraState extends State<Monstera> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('몬스테라 키우는 법', style: TextStyle(color: appbarColor),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'momstera test');
          },
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/monstera.jpeg',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '몬스테라',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '몬스테라 델리시오사',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('몬스테라 델리시오사란?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                  '남미 열대 우림 출신의 몬스테라 델리시오사는 큰 나무를 타고 올라가는 습성이 있는 덩굴성 식물이에요. 하트 모양의 찢어진 특이한 잎 모양이 시원한 느낌을 자아내고, 키우기도 까다롭지 않아 사랑받고 있어요. 몬스테라는 아래 쪽의 잎에도 빛을 나누어주기 위해 잎이 찢어졌다고 해요. 천남성과에 속하므로 독성이 있어 아이와 반려동물이 있다면 섭취하지 않도록 주의를 기울여야 하는 친구예요.',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('몬스테라 관리를 위한 팁',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                '1. 물은 평균 주 1~2회, 흙 표면부터 3cm까지 마르면 듬뿍 주세요\n \n2. 반양지 식물으로 하루 2~3시간 정도의 은은한 햇빛이 필요해요\n \n3. 권장 습도는 70% 이상으로 주변 공기를 촉촉하게 관리해주세요\n \n4. 20~25℃의 온도에서 잘 자라요',
                style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Caladea extends StatefulWidget {
  const Caladea({super.key});

  @override
  State<Caladea> createState() => _CaladeaState();
}

class _CaladeaState extends State<Caladea> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('칼라데아 키우는 법', style: TextStyle(color: appbarColor),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'caladea test');
          },
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/caladea.jpeg',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '칼라데아',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '칼라데아 퓨전화이트',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('칼라데아 퓨전화이트란?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                  '녹색과 흰색의 대비가 아름다운 칼라데아 퓨전화이트는 잎 뒷면이 마젠타색을 띠는 반전 매력을 소유한 마란타과의 식물입니다. 칼라데아의 한 종류답게 퓨전화이트 또한 따뜻한 온도와 촉촉한 공기를 좋아합니다. 퓨전화이트 하나만으로도 존재감이 뛰어나 온 집 안을 분위기 있게 만들어줘요. 다른 칼라데아들보다 잎이 얇은 편이라 세심하게 습도를 조절해주어야 하는 식물이지만, 아름다운 외모와 희소성 덕분에 아주 인기가 많은 품종이랍니다. 또한 독성이 없어 반려동물을 기르시는 집사님들도 걱정 없이 키울 수 있는 식물이랍니다!',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('칼라데아 관리를 위한 팁',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                '1. 물은 평균 주 1~2회, 흙 표면부터 3cm까지 마르면 듬뿍 주세요\n \n2. 반양지 식물으로 하루 2~3시간 정도의 은은한 햇빛이 필요해요\n \n3. 권장 습도는 70% 이상으로 주변 공기를 촉촉하게 관리해주세요\n \n4. 16~25℃의 온도에서 잘 자라요',
                style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Dayuk extends StatefulWidget {
  const Dayuk({super.key});

  @override
  State<Dayuk> createState() => _DayukState();
}

class _DayukState extends State<Dayuk> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('제옥 키우는 법', style: TextStyle(color: appbarColor),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'dayuk test');
          },
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/dayuk.png',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '제옥',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '제옥 (플레이오스필로스 넬리)',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('제옥이란?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                  '제옥은 마치 코뿔소를 연상시키는 특이한 모양의 다육식물입니다. 흙 가까이에서 뽈록 솟아오른 돌 같이 보이기도 해 서양에서는 `Split Rock`이라고 불려요. 이러한 특이한 외형은 제옥이 살아남기 위해 특별하게 진화된 결과물이에요. 남아프리카의 건조한 사막지대에서 온 제옥은 주변 바위틈이나 자갈들 사이에서 성장하는데, 다른 동물들로부터 자신의 몸을 보호하기 위해 주변 색과 비슷한 색과 질감으로 자란다고 해요. 가을에 새 잎을 낼 때 제옥은 파충류처럼 `탈피`를 해요. 오래된 잎이 벌어지면 그 사이에서 새 잎이 나오는 신기한 식물이랍니다.',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('제옥 관리를 위한 팁',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                '1. 물은 평균 월 1회 이하, 통통한 잎이 살짝 쭈글해지면 듬뿍 주세요\n \n2. 양지 식물으로 하루 6시간 이상 밝은 햇빛이 필요해요\n \n3. 권장 습도는 40% 이하로 주변 공기를 건조하게 관리해주세요\n \n4. 18~27℃의 온도에서 잘 자라요',
                style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class TableYaga extends StatefulWidget {
  const TableYaga({super.key});

  @override
  State<TableYaga> createState() => _TableYagaState();
}

class _TableYagaState extends State<TableYaga> {
  var appbarColor = Color.fromRGBO(27, 107, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('테이블야자 키우는 법', style: TextStyle(color: appbarColor),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'tableYaga test');
          },
          icon: Icon(Icons.navigate_before, color: appbarColor,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/table-yaga.jpeg',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '테이블야자',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Chamaedorea elegans',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('테이블 야자란?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                  '테이블 야자의 속명 Chamaedorea는 ‘난쟁이(dwarf)ʼ와 ‘선물(gift)ʼ이라는 그리스어에서 유래되었어요. 테이블 야자는 그 이름처럼 선물하기에 아주 좋은 식물이에요. 또한 빛이 적은 곳에서도 잘 자라고 다양한 환경에 대한 적응력이 좋아서 키우기 쉬운 식물이에요. 그래서 초보 가드너들에 많이 추천하는 식물이랍니다. 게다가 독성이 없어서 반려동물에게 안전하고 각종 화학물질을 제거하는 공기정화 능력이 뛰어난 식물이라 오랫동안 사랑받고 있어요.',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.auto_awesome, size: 40,),
                SizedBox(
                  width: 10,
                ),
                Text('테이블야자 관리를 위한 팁',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              width: 360,
              child: Text(
                '1. 물은 평균 주 1~2회, 흙 표면부터 3cm까지 마르면, 듬뿍 주세요\n \n2. 반음지 식물으로 하루 2~3시간 정도의 은은한 햇빛이 필요해요\n \n3. 권장 습도는 40~70% 으로 주변 공기가 건조해지지 않도록 관리해주세요\n \n4. 21~25℃의 온도에서 잘 자라요',
                style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Yaga extends StatefulWidget {
  const Yaga({super.key});

  @override
  State<Yaga> createState() => _YagaState();
}

class _YagaState extends State<Yaga> {
  @override
    var appbarColor = Color.fromRGBO(27, 107, 35, 1);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('아레카 야자 키우는 법', style: TextStyle(color: appbarColor),),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, 'Yaga test');
            },
            icon: Icon(Icons.navigate_before, color: appbarColor,),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/table-yaga-2.jpeg',
                width: 400,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '아레카 야자',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Chrysalidocarpus lutescens',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.auto_awesome, size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                  Text('아레카 야자란?',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ],
              ),
              Container(
                width: 360,
                child: Text(
                    '아레카야자는 NASA가 선정한 실내 공기 정화 1위 식물이에요. 독성이 없어서 반려동물에게도 안전한 아레카야자는 빛이 적은 곳에서도 잘 자라 초보가드너도 어려움 없이 키울 수 있는 식물입니다. 증산량이 많아 천연 가습기 역할도 훌륭하게 해낸답니다. 마다가스카르에서 온 아레카 야자는 따뜻한 곳을 좋아해요. 강한 직사광선보다는 은은한 간접적인 빛을 좋아하고 다양한 환경에 잘 적응하는 식물이랍니다.',
                    style: TextStyle(
                      fontSize: 17,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.auto_awesome, size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                  Text('아레카 야자 관리를 위한 팁',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ],
              ),
              Container(
                width: 360,
                child: Text(
                  '1. 물은 평균 주 1~2회, 흙 표면부터 3cm까지 마르면, 듬뿍 주세요\n \n2. 반양지 식물으로 하루 2~3시간 정도의 은은한 햇빛이 필요해요\n \n3. 권장 습도는 40~70% 으로 주변 공기가 건조해지지 않도록 관리해주세요\n \n4. 18~24℃의 온도에서 잘 자라요',
                  style: TextStyle(fontSize: 17),),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    }
}
