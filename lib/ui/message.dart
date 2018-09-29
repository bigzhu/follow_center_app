import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../models/influencer_social.dart';
import 'card_bar.dart';

class MessageCard extends Card {
  MessageCard(InfluencerSocial influencerSocial, String desc) : super(
      child: Center(
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new CardBar(influencerSocial: influencerSocial),
                // Image.network(influencerSocial.avatar),
                HtmlView(data: desc),
              ],
          ),
      ),
  ) {} // 注意这里
}

class ChoiceCard extends StatelessWidget {
  String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><p><img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg" /></p>';
  InfluencerSocial influencerSocial = new InfluencerSocial(
      avatar:'https://s18.postimg.cc/l3tv0a4af/VTSJ5m_Rt_400x400.jpg?dl=1',
      socialName: 'geo',
      social: 'twitter',
  );
  @override
  Widget build(BuildContext context) {
    return MessageCard(influencerSocial, html);
  }
}

