import 'package:flutter/material.dart';
import 'View/junwooTitle.dart';

void main() {
  runApp(const JunWooMain());
}

class JunWooMain extends StatelessWidget {
  const JunWooMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 디버그 표시를 없앤다.
        debugShowCheckedModeBanner: false,
        title: '황준우',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const JunwooTitle());
  }
}
