class MessageModel {
  int id;
  String outId;
  String social;
  String outCreatedAt;
  String text;
  String href;
  String mediaType;
  List<String> medias;
  int influencerSocialId;
  String socialName;
  int influencerId;
  int anki;

  MessageModel(
      {this.id,
      this.outId,
      this.social,
      this.outCreatedAt,
      this.text,
      this.href,
      this.mediaType,
      this.medias,
      this.influencerSocialId,
      this.socialName,
      this.influencerId,
      this.anki});

  MessageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    outId = json['out_id'];
    social = json['social'];
    outCreatedAt = json['out_created_at'];
    text = json['text'];
    href = json['href'];
    mediaType = json['media_type'];
    medias = json['medias'].cast<String>();
    influencerSocialId = json['influencer_social_id'];
    socialName = json['social_name'];
    influencerId = json['influencer_id'];
    anki = json['anki'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['out_id'] = this.outId;
    data['social'] = this.social;
    data['out_created_at'] = this.outCreatedAt;
    data['text'] = this.text;
    data['href'] = this.href;
    data['media_type'] = this.mediaType;
    data['medias'] = this.medias;
    data['influencer_social_id'] = this.influencerSocialId;
    data['social_name'] = this.socialName;
    data['influencer_id'] = this.influencerId;
    data['anki'] = this.anki;
    return data;
  }
}
