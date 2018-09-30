import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../models/influencer_social.dart';
import '../models/message.dart';
import 'card_bar.dart';

class ChoiceCard extends StatelessWidget {
  String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><p><img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg" /></p>';
  InfluencerSocial influencerSocial = InfluencerSocial(
      avatar:'https://s18.postimg.cc/l3tv0a4af/VTSJ5m_Rt_400x400.jpg?dl=1',
      socialName: 'geo',
      social: 'twitter',
  );
  Message message = Message(
      text: 'Long day https://t.co/v8UCHqfDCY',
      medias: [
        'https://follow.bigzhu.net/medias/CharlesHoskinson/twitter/DoLPBfAXsAAdlM5.jpg',
        'https://follow.bigzhu.net/medias/CharlesHoskinson/twitter/DoLPBfDWsAAC0rY.jpg'
      ],
  );
  List<Widget> cardWidgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    cardWidgets.add(CardBar(influencerSocial: influencerSocial));
    cardWidgets.add(Text(message.text));
    for (var i = 0; i < message.medias.length; i++)  {
      cardWidgets.add(
          Padding(
              padding:  EdgeInsets.only(bottom: 8.0),
              child:  Image.network(message.medias[i]),
          )
      );
    }

    return Card( 
        child: Center(
            child: Column(
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: cardWidgets,
            ),
        ));
  }
}
