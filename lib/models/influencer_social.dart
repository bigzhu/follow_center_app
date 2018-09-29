class InfluencerSocial {
  int id;
  String social;
  String socialName;
  String avatar;
  String href;
  String bio;
  int followedCount;
  String lastId;
  int influencerId;
  String errorInfo;
  String outId;

  InfluencerSocial(
      {this.id,
      this.social,
      this.socialName,
      this.avatar,
      this.href,
      this.bio,
      this.followedCount,
      this.lastId,
      this.influencerId,
      this.errorInfo,
      this.outId});

  InfluencerSocial.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    social = json['social'];
    socialName = json['social_name'];
    avatar = json['avatar'];
    href = json['href'];
    bio = json['bio'];
    followedCount = json['followed_count'];
    lastId = json['last_id'];
    influencerId = json['influencer_id'];
    errorInfo = json['error_info'];
    outId = json['out_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['social'] = this.social;
    data['social_name'] = this.socialName;
    data['avatar'] = this.avatar;
    data['href'] = this.href;
    data['bio'] = this.bio;
    data['followed_count'] = this.followedCount;
    data['last_id'] = this.lastId;
    data['influencer_id'] = this.influencerId;
    data['error_info'] = this.errorInfo;
    data['out_id'] = this.outId;
    return data;
  }
}
