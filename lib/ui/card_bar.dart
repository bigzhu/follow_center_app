import '../models/influencer_social.dart';
import 'package:flutter/material.dart';

class CardBar extends StatelessWidget{
  const CardBar({ Key key, this.influencerSocial }) : super(key: key);
  final InfluencerSocial influencerSocial;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
           Expanded(
              child:  Row(
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
           Text('一天前'),
           Icon(
              Icons.android,
              color: Colors.grey[600],
          ),
          ]
              );
  }
}
