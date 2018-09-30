import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../models/influencer_social.dart';
import '../models/message.dart';
import 'card_bar.dart';

class Message extends StatelessWidget {
  InfluencerSocialModel influencerSocial = InfluencerSocialModel(
      avatar:'https://s18.postimg.cc/l3tv0a4af/VTSJ5m_Rt_400x400.jpg?dl=1',
      socialName: 'geo',
      social: 'twitter',
  );
  MessageModel message = MessageModel(
      text: 'Long day https://t.co/v8UCHqfDCY',
      medias: [
        'https://follow.bigzhu.net/medias/CharlesHoskinson/twitter/DoLPBfAXsAAdlM5.jpg',
        'https://follow.bigzhu.net/medias/CharlesHoskinson/twitter/DoLPBfDWsAAC0rY.jpg'
      ],
  );
  // 存放 card 里面要显示的内容
  List<Widget> cardWidgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    cardWidgets.add(CardBar(influencerSocial: influencerSocial));
    cardWidgets.add(
        Padding(
            padding:  EdgeInsets.only(bottom: 8.0),
            child:  Text(message.text)
        )
    );
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
