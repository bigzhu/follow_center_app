// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'ui/message.dart';
import 'ui/messages.dart';

import './models/influencer_social.dart';
import './models/message.dart';

class TabbedAppBarSample extends StatelessWidget {
  InfluencerSocialModel influencerSocial = InfluencerSocialModel(
      avatar:'https://s18.postimg.cc/l3tv0a4af/VTSJ5m_Rt_400x400.jpg?dl=1',
      socialName: 'geo',
      social: 'twitter',
  );
  MessageModel message = MessageModel(
      text: 'Long day https://t.co/v8UCHqfDCY',
      medias: [
        'http://kmd.psay.me:4004/medias/CharlesHoskinson/twitter/DoLPBfAXsAAdlM5.jpg',
        'http://kmd.psay.me:4004/medias/CharlesHoskinson/twitter/DoLPBfDWsAAC0rY.jpg'
      ],
  );
  MessageModel message2 = MessageModel(
      text: '''Photo by @brentstirton | I have been incredibly lucky to work inside Virunga National Park's #mountaingorilla sector a few times. My work for National Geographic Magazine often means I get to spend a little more time than most with incredible #animals. Occasionally that results in magic moments like this where I am able to be meters away from giant #silverbacks who are as curious about me as I am about them. I got to make this image while shooting an essay for National Geographic on this amazing park and the difficulties of conserving nature here.There are only around 40-50 of these alpha males in the world. I saw these 2 silverbacks from the Mpua family in the Jomba rainforest of Virunga, it's very unusual to see them hanging out together like this, usually they are pitted against each other for leadership. Virunga is a tough place for conservation, recently a female ranger was killed and the park shut down tourism for a while. They are gearing up to open again and if you have the chance, I would encourage you to go and see these magnificent animals in the flesh. There is nothing like locking eyes with one of these Silverbacks and feeling what can only be described as a human connection. Frankly, the first time it happened to me, it changed my whole career path and my thinking about the world I was covering. I think Virunga is the best place in the world for this experience, the most authentic way to spend time with these incredible animals. It doesn't hurt that its also the cheapest and that you are helping support #conservationists who need it most.''',
      medias: [
        'http://kmd.psay.me:4004/medias/natgeo/instagram/41615530_296829930908777_1415513258455916960_n.jpg',
      ],
  );

  @override
  Widget build(BuildContext context) {
    List<MessageModel> messages = [message, message2];
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
                          child: Messages(influencerSocial:influencerSocial, messages:messages),
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
