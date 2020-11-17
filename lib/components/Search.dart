import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:unwrappd/components/AllChippies.dart';
import "../classes/Chippy.dart";
// routes
import "../components/AllChippies.dart";

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Chippy> chippiesFound = [];
  var loading = false;
  Future<Null> _callAPI(String searchText) async {
    if (loading) {
      return;
    }
    chippiesFound.clear();
    setState(() {
      loading = true;
    });
    log("Calling API with param " + searchText);
    try {
      Map<String, String> body = {'postcode': "S66 8RN"};
      final http.Response response = await http.post(
        'http://172.16.6.158:4500/get-chippies',
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          for (Map<String, dynamic> i in data) {
            chippiesFound.add(Chippy.fromJson(i));
            print(i);
          }
          loading = false;
          if (!loading && chippiesFound.length > 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AllChippies(allChippies: chippiesFound)));
          }
        });
      }
    } on Exception catch (exception) {
      log(exception.toString());
    } catch (error) {
      log(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 16.0);

    final searchField = TextField(
      onSubmitted: (txt) {
        _callAPI(txt);
      },
      textInputAction: TextInputAction.search,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: "Search by postcode",
          prefixIcon: Icon(Icons.search),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 75, 20, 0),
      child: searchField,
    );
  }
}
