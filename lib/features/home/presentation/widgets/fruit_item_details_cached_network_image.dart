import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FruitItemDetailsCachedNetworkImage extends StatelessWidget {
  const FruitItemDetailsCachedNetworkImage({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
    fit: BoxFit.contain,
      imageUrl: imageUrl,errorWidget: (context, url, error) => Icon(Icons.error),placeholder: (context, url) => Center(child: CircularProgressIndicator(),),);
  }
}