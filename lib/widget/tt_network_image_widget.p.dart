import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TTNetworkImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String imageUrl;
  const TTNetworkImage({Key? key, required this.imageUrl, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      width: width,
      height: height,
    );
  }
}
