import 'package:connecty_flutter/favorite_list_page.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class WordListPage extends StatelessWidget {
  const WordListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TESTING"),
        actions: <Widget>[
          IconButton(onPressed: (){
            print("Button Tapped");
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return FavoriteListPage();
            }));
            }, icon: Icon(Icons.favorite))
        ],
      ),
      body: Center(child: RandomWords()),
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
  Set<WordPair> saved = Set<WordPair>(); //List와 달리 같은 값의 배열 들어갈시 에

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

    bool isAlreadySaved = saved.contains(wordPair);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: (){
            setState(() {
              if(isAlreadySaved){
                saved.remove(wordPair);
              }else {
                saved.add(wordPair);
              }
            });

            print(saved.toString());
          },
          title: Text(
            wordPair  .asCamelCase,
            //style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle : Text(
            wordPair  .asCamelCase,
            //style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon( isAlreadySaved?Icons.favorite:Icons.favorite_border ,
            color: isAlreadySaved? Colors.redAccent : Colors.grey,
          ),
        ),
        Divider(
          thickness: 1, color: Colors.grey[300], height: 4,
          indent: 16, endIndent: 16,
        )
      ],
    );
  }
}
