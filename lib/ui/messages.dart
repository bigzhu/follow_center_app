import 'package:flutter/material.dart';
import './message.dart';
import '../models/influencer_social.dart';
import '../models/message.dart';

// 显示多条消息
class Messages extends StatelessWidget {
  const Messages({ Key key, this.influencerSocial, this.messages }) : super(key: key);
  final InfluencerSocialModel influencerSocial;
  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
           return Message(influencerSocial:influencerSocial, message:messages[index]);
        },
    );
  }
}
