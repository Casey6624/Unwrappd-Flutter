import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "../classes/Chippy.dart";

void main() {
  runApp(Search());
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchText = "S66 8RN";

  Future<Chippy> _callAPI() async {
    log("Calling API with param " + searchText);
    try {
      Map<String, String> body = {'postcode': searchText};
      final http.Response response = await http.post(
        'http://172.16.6.158:4500/get-chippies',
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        Chippy chippies = Chippy.fromJson(jsonDecode(response.body)[0]);
        log("haha");
        return chippies;
      }
    } on Exception catch (exception) {
      log(exception.toString());
    } catch (error) {
      log(error);
    }
  }

  Future<dynamic> _getChippies() async {
    var test = _callAPI();
    //log(chippies);
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    final searchField = TextField(
      onChanged: (txt) {
        searchText = txt;
        print(txt);
      },
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          hintText: "Search by postcode",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          searchField,
          RaisedButton(
            child: Text("GO"),
            onPressed: _getChippies,
          ),
        ],
      ),
    );
  }
}
