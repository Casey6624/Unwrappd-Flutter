import 'package:flutter/material.dart';
// views
import "./views/Index.dart";
import "./views/Placeholder.dart";
// styling
import "./styles/UnwrappdColours.dart";
import "package:flutter_svg/flutter_svg.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unwrappd',
      theme: ThemeData(
        primarySwatch: UnwrappdColours.highlightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UnwrappdMain(title: 'Unwrappd'),
    );
  }
}

class UnwrappdMain extends StatefulWidget {
  UnwrappdMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UnwrappdMainState createState() => _UnwrappdMainState();
}

class _UnwrappdMainState extends State<UnwrappdMain> {
  int _tabIndex = 0;
  final List<Widget> _children = [
    Index(),
    PlaceholderWidget(Colors.lightBlue, "Discover"),
    PlaceholderWidget(Colors.blue, "Reviews"),
    PlaceholderWidget(Colors.deepPurple, "Profile"),
  ];

  void tabPressed(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SvgPicture.asset("assets/logo-abstract.svg",
              height: 40, width: 40)),
      body: _children[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: tabPressed,
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.directions_boat), title: Text("Discover")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.rate_review), title: Text("Reviews")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: Text("Profile"))
        ],
      ),
    );
  }
}
