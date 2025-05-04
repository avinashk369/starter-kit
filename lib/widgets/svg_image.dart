import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A reusable widget for displaying SVG images from either assets or URLs.
class SvgImage extends StatelessWidget {
  /// The asset path or URL of the SVG image
  final String source;

  /// Whether the source is an asset or a URL
  final SvgSource sourceType;

  /// The width of the SVG image
  final double? width;

  /// The height of the SVG image
  final double? height;

  /// Color to apply to the SVG
  final Color? color;

  /// How to align the SVG within its bounds
  final BoxFit fit;

  /// Placeholder widget to show while loading network SVGs
  final Widget? placeholder;

  /// Widget to show if there's an error loading the SVG
  final Widget? errorWidget;

  /// Duration for network SVG caching (used when implementing caching)
  final Duration? cacheDuration;

  /// Creates a new SVG image widget
  const SvgImage({
    Key? key,
    required this.source,
    required this.sourceType,
    this.width = 24.0,
    this.height = 24.0,
    this.color,
    this.fit = BoxFit.contain,
    this.placeholder,
    this.errorWidget,
    this.cacheDuration,
  }) : super(key: key);

  /// Create an SVG from an asset path
  factory SvgImage.asset(
    String assetPath, {
    Key? key,
    double width = 24.0,
    double height = 24.0,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgImage(
      key: key,
      source: assetPath,
      sourceType: SvgSource.asset,
      width: width,
      height: height,
      color: color,
      fit: fit,
    );
  }

  /// Create an SVG from a URL
  factory SvgImage.network(
    String url, {
    Key? key,
    double width = 24.0,
    double height = 24.0,
    Color? color,
    BoxFit fit = BoxFit.contain,
    Widget? placeholder,
    Widget? errorWidget,
    Duration? cacheDuration,
  }) {
    return SvgImage(
      key: key,
      source: url,
      sourceType: SvgSource.network,
      width: width,
      height: height,
      color: color,
      fit: fit,
      placeholder: placeholder,
      errorWidget: errorWidget,
      cacheDuration: cacheDuration,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (sourceType) {
      case SvgSource.asset:
        return _buildAssetSvg();
      case SvgSource.network:
        return _buildNetworkSvg();
    }
  }

  Widget _buildAssetSvg() {
    try {
      return SvgPicture.asset(
        source,
        width: width,
        height: height,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        fit: fit,
      );
    } catch (e) {
      debugPrint('Error loading SVG asset: $e');
      return _buildErrorWidget();
    }
  }

  Widget _buildNetworkSvg() {
    return FutureBuilder<Response<List<int>>>(
      future: _fetchSvg(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildPlaceholder();
        } else if (snapshot.hasError ||
            !snapshot.hasData ||
            snapshot.data?.statusCode != 200) {
          debugPrint('Error loading SVG from URL: ${snapshot.error}');
          return _buildErrorWidget();
        } else {
          try {
            return SvgPicture.memory(
              Uint8List.fromList(snapshot.data!.data!),
              width: width,
              height: height,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.srcIn)
                  : null,
              fit: fit,
            );
          } catch (e) {
            debugPrint('Error parsing SVG from URL: $e');
            return _buildErrorWidget();
          }
        }
      },
    );
  }

  Future<Response<List<int>>> _fetchSvg() async {
    // Create a Dio instance - you may want to inject this instead
    final dio = Dio();

    // Configure Dio for binary response
    dio.options.responseType = ResponseType.bytes;

    // Add caching logic if cacheDuration is provided
    if (cacheDuration != null) {
      // Example of how you might implement caching:
      // 1. Check if the URL exists in your cache and is not expired
      // 2. If valid cached data exists, return it
      // 3. Otherwise fetch and store in cache with expiry time
    }

    // Perform the request and return the response
    return await dio.get<List<int>>(source);
  }

  Widget _buildPlaceholder() {
    return placeholder ??
        SizedBox(
          width: width,
          height: height,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
            ),
          ),
        );
  }

  Widget _buildErrorWidget() {
    return errorWidget ??
        SizedBox(
          width: width,
          height: height,
          child: const Center(
            child: Icon(
              Icons.broken_image,
              color: Colors.grey,
            ),
          ),
        );
  }
}

/// Enum to define the source type of the SVG
enum SvgSource {
  /// SVG from an asset
  asset,

  /// SVG from a network URL
  network,
}
