import 'package:flutter/material.dart';
import 'package:flutter_application/style/theme.dart' as Style;
import 'package:flutter_application/widget/genres_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        title: Text('Movie App'),
      ),
      body: ListView(
        children: <Widget>[
          GenresView()
        ],
      ),
    );
  }
}