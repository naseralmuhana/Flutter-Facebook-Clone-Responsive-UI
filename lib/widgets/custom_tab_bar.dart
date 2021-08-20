import 'package:facebook_clone_responsive_ui/config/config.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final void Function(int)? onTap;
  final int selectedIndex;
  final bool isBottomIndicator;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.onTap,
    required this.selectedIndex,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              ),
      ),
      onTap: onTap,
      tabs: icons
          .asMap()
          .map(
            (i, e) {
              return MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex ? Palette.facebookBlue : Colors.black45,
                    size: 25.0,
                  ),
                ),
              );
            },
          )
          .values
          .toList(),
    );
  }
}
