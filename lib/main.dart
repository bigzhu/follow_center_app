// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

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
  String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><p><img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg" /></p>';

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
                  HtmlView(data: html),
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
