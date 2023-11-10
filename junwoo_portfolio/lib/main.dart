import 'package:flutter/material.dart';

void main() {
  runApp(const JunWooMain());
}

class JunWooMain extends StatelessWidget {
  const JunWooMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 디버그 표시를 없앤다.
        debugShowCheckedModeBanner: false,
        title: '황준우',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const JunwooMainPage());
  }
}

class JunwooMainPage extends StatelessWidget {
  const JunwooMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '황준우',
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // 원형 사진 중앙 젤위 배치
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                padding: const EdgeInsets.all(20.0),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // shade100은 상수타입으로 될수가 없음
                  // 그이유는 shade는 객체이기 때문임
                  color: Colors.deepPurple.shade300,
                ),
                child: ClipOval(
                  child: Center(
                    child: Image.asset(
                      'image/junwoo.jpg',
                      width: 280,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // 연혁 내인생 이야기
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
              width: 300,
              height: 300,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '내 인생 이야기',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1997년 07월 07일 울산 출생',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '2013년 03월 울산고등학교 입학',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '2016년 2월 울산고등학교 졸업',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '2016년 3월 영남이공대학교 기계계열 입학',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '2021년 2월 영남이공대학교 졸업',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '2016년 7월 26일 21사단 65연대 수송대 입대',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('2018년 4월 25일 전역',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
            ),
          ],
        ));
  }
}
