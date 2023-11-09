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
        title: 'Junwoo Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              '황준우',
            ),
            centerTitle: true,
          ),
          body: Center(
              child: Image.asset(
            "image/junwoo.jpg",
            width: 30,
            height: 30,
          )),
        ));
  }
}
