// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Stuff(),
    );
  }
}

class StuffState extends State<Stuff> {
  @override

  final _suggestions = <int> [];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Integers'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(int number) {
  return ListTile(
    title: Text(
      number.toString(),
      style: _biggerFont,
    ),
  );
}

  Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        
        if (i >= _suggestions.length) {
          _suggestions.add(i);
        }
        return _buildRow(_suggestions[i]);
      });
 }
}

class Stuff extends StatefulWidget {
  @override
  StuffState createState() => StuffState();
}
