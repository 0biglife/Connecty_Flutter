import 'package:connecty_flutter/word_list_page.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoriteListPage extends StatelessWidget {

  final List<WordPair> favorites;

  FavoriteListPage(
      this.favorites, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(favorites.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite list"),
      ),
      body: ListView.separated(itemBuilder: (BuildContext context,int index){
        return ListTile(
          title: Text(
            favorites[index].asCamelCase,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle : Text(
            favorites[index].asCamelCase,
            //style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index){
        return Divider(
          thickness: 1,
            color: Colors.grey[300],
            height: 5,
            indent: 16,
            endIndent: 16,
        );
      }, itemCount: favorites.length)
    );
  }
}
