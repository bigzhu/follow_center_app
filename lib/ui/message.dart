import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../models/influencer_social.dart';
import '../models/message.dart';
import 'card_bar.dart';

class Message extends StatelessWidget {
  Message({ Key key, this.influencerSocial, this.message }) : super(key: key);
  final InfluencerSocialModel influencerSocial;
  final MessageModel message;

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
