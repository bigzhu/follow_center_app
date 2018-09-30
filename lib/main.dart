// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'ui/message.dart';

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            // brightness: Brightness.light,
            primaryColor: Colors.white, //Changing this will change the color of the TabBar
            // accentColor: Colors.cyan[600],
        ),
        home: DefaultTabController(
            length: choices.length,
            child: Scaffold(
                appBar: AppBar(
                    title: Row(children: [
                      Image.asset('assets/logo.png', fit: BoxFit.cover, alignment: Alignment.centerLeft), 
                      Text('Follow Center'),
                    ]),
                    bottom: TabBar(
                        isScrollable: false,
                        tabs: choices.map((Choice choice) {
                          return Tab(
                              text: choice.title,
                          );
                        }).toList(),
                    ),
                ),
                body: TabBarView(
                    children: choices.map((Choice choice) {
                      return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Message(),
                      );
                    }).toList(),
                ),
                ),
                ),
                );
  }
}

class Choice {
  const Choice({ this.title});
  final String title;
}

const List<Choice> choices = <Choice>[
  Choice(title: '首页'),
  Choice(title: '寻他'),
];

void main() {
  runApp(TabbedAppBarSample());
}
