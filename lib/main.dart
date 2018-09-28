// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

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
                    // title: const Text('Follow Center'),
                    title: Row(children: [
                      Image.asset('assets/logo.png', fit: BoxFit.cover, alignment: Alignment.centerLeft), 
                      Text('Follow Center'),
                    ]),
                    bottom: TabBar(
                        isScrollable: false,
                        tabs: choices.map((Choice choice) {
                          return Tab(
                              text: choice.title,
                              // icon: Icon(choice.icon),
                          );
                        }).toList(),
                    ),
                ),
                body: TabBarView(
                    children: choices.map((Choice choice) {
                      return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ChoiceCard(choice: choice),
                      );
                    }).toList(),
                ),
                ),
                ),
                );
  }
}

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: '首页'),
  Choice(title: '寻他'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.white,
        child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(choice.icon, size: 128.0, color: textStyle.color),
                  Text(choice.title, style: textStyle),
                ],
            ),
        ),
    );
  }
}

void main() {
  runApp(TabbedAppBarSample());
}
