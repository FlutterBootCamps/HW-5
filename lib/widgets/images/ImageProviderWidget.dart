
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class ImageProviderWidget extends StatelessWidget {
  const ImageProviderWidget({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return OctoImage.fromSet(
      fit: BoxFit.cover,
      image: CachedNetworkImageProvider(
        imageURL,
      ),
      octoSet: OctoSet.circleAvatar(
        backgroundColor: Colors.white,
        text: const CircularProgressIndicator(),
      ),
    );
  }
}

