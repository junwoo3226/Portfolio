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
        primarySwatch: Colors.purple,
      ),
      home: Text('Junwoo Portfolio'),
    );
  }
}
