import 'package:cached_network_image/cached_network_image.dart';
import 'package:creativefabrica/assets/image_assets.dart';
import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/styles/loading.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  static Future<void> navigate(
    BuildContext context, {
    required String imageUrl,
    bool replace = false,
  }) async {
    final route = MaterialPageRoute(
      builder: (_) => ImageScreen(
        imageUrl: imageUrl,
      ),
    );
    if (replace) {
      await Navigator.of(context, rootNavigator: true).pushReplacement(route);
    } else {
      await Navigator.of(context, rootNavigator: true).push(route);
    }
  }

  final String imageUrl;

  const ImageScreen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.imageViewTitle),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          _buildHero(),
        ],
      ),
    );
  }

  Widget _buildHero() {
    return Hero(
      tag: imageUrl,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            const Loading(),
        errorWidget: (context, url, error) {
          return Image.asset(
            ImageAssets.noImageFound,
          );
        },
      ),
    );
  }
}
