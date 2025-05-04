import 'package:flutter/material.dart';

class ITabBar extends StatelessWidget {
  const ITabBar({
    super.key,
    required this.tabs,
    this.tabAlignment = TabAlignment.fill,
    this.isScrollable = false,
    this.indicatorSize = TabBarIndicatorSize.tab,
    this.tabController,
    this.onTap,
  });
  final List<Widget> tabs;
  final TabController? tabController;
  final Function(int index)? onTap;
  final TabAlignment tabAlignment;
  final bool isScrollable;
  final TabBarIndicatorSize indicatorSize;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: tabs,
      onTap: (index) => onTap?.call(index),
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      splashFactory: NoSplash.splashFactory,
      labelColor: Theme.of(context).colorScheme.onSurface,
      dividerColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      indicatorAnimation: TabIndicatorAnimation.elastic,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      // indicatorPadding: EdgeInsets.symmetric(horizontal: 4),
      unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
      labelStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w700, fontSize: 14),
      unselectedLabelStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
      indicatorSize: indicatorSize,
    );
  }
}

class CustomTabIndicator extends Decoration {
  final BorderRadius borderRadius;
  final Color color;
  final double indicatorHeight;

  const CustomTabIndicator({
    required this.borderRadius,
    required this.color,
    this.indicatorHeight = 4.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabIndicatorPainter(
      borderRadius: borderRadius,
      color: color,
      indicatorHeight: indicatorHeight,
      onChanged: onChanged,
    );
  }
}

class _CustomTabIndicatorPainter extends BoxPainter {
  final BorderRadius borderRadius;
  final Color color;
  final double indicatorHeight;

  _CustomTabIndicatorPainter({
    required this.borderRadius,
    required this.color,
    required this.indicatorHeight,
    VoidCallback? onChanged,
  }) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final RRect roundedRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(
        rect.left,
        rect.bottom - indicatorHeight,
        rect.width,
        indicatorHeight,
      ),
      borderRadius.topLeft,
    );

    canvas.drawRRect(roundedRect, paint);
  }
}
