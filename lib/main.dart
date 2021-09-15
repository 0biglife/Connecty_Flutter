import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //상태 변화가 없는 위젯

  @override
  Widget build(BuildContext context) {
    WordPair wordPair = WordPair.random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hi"),
        ),
        body: Center(child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  //상태 변화가 필요할 때 사용(like기능)
  //const RandomWords({Key? key}) : super(key: key);
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  List<WordPair> words = [];

  @override
  Widget build(BuildContext context) {
    //build 함수 : 위젯을 배열시켜
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index >= words.length) words.addAll(generateWordPairs().take(10));
        return _getRow(words[index]);
      },
    );
  }

  Widget _getRow(WordPair wordPair){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Text(
        wordPair  .asCamelCase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
