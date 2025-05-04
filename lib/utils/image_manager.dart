import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:moneymemos/core/const/string_constant.dart';

class ImageManager {
  static final ImageManager _instance = ImageManager._internal();
  factory ImageManager() => _instance;
  ImageManager._internal();

  static final customCacheManager = CacheManager(
    Config(
      StringsConstants.appName,
      stalePeriod: const Duration(days: 2),
      maxNrOfCacheObjects: 50,
    ),
  );

  static Widget getNetworkImage(String imgUrl,
      {double width = 100, double height = 100, BoxFit fit = BoxFit.cover}) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      height: height,
      width: width,
      cacheManager: customCacheManager,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
        ),
      ),
      errorWidget: (context, url, error) => SizedBox(
        width: width,
        height: height,
        child: const Center(
          child: Icon(
            Icons.broken_image,
            color: Colors.grey,
          ),
        ),
      ),
      fit: fit,
    );
  }

  static Future<void> clearCache() async =>
      await customCacheManager.emptyCache();
}
