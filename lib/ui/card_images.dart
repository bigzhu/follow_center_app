import 'package:flutter/material.dart';

// 显示 卡片内的多组图片
class CardImages extends StatelessWidget {
  const CardImages({ Key key, this.images }) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
           return Image.network(images[index]);
        },
    );
  }
}
