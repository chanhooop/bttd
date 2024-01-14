import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImageWidget extends StatelessWidget {
  final String imgurl;
  final String assetImgPath;
  const CustomNetworkImageWidget({super.key, required this.imgurl, required this.assetImgPath});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imgurl,
        placeholder: (context, url)=>Image.asset(assetImgPath),
        errorWidget: (context, url,object)=>Image.asset(assetImgPath),
    );
  }
}
