import '../models/influencer_social.dart';
import 'package:flutter/material.dart';

class CardBar extends StatelessWidget{
  const CardBar({ Key key, this.influencerSocial }) : super(key: key);
  final InfluencerSocial influencerSocial;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          new Expanded(
              child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        backgroundImage: NetworkImage(influencerSocial.avatar),
                    ),
                    Column(
                        children: [
                          Text(influencerSocial.socialName),
                          Text(influencerSocial.social),
                        ]
                    ),
                  ],
              ),
          ),
          new Text('一天前'),
          new Icon(
              Icons.android,
              color: Colors.grey[600],
          ),
          ]
              );
  }
}
