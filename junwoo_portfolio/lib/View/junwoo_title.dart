import 'package:flutter/material.dart';

class JunwooTitle extends StatelessWidget {
  const JunwooTitle({super.key});

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
          ],
        ));
  }
}
