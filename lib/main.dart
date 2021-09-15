import 'package:connecty_flutter/word_list_page.dart';
import 'package:flutter/material.dart';
import 'home_view.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //상태 변화가 없는 위젯

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(), //WordListPage(),
    );
  } //
}
