import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONNECTY"),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cover3.jpeg'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("NAME",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("0BIGLIFE",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("THIRD TEXT",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("FOURTH TEXT",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightSaber",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightSaber",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightSaber",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
