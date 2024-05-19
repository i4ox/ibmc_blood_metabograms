import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kmk_viewer/uikit/uikit.dart';
import 'package:kmk_viewer/util/extensions/color_filter.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Custom [BottomNavigationBar] widget
class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
    required this.items,
    required this.onTap,
    this.currentIndex = 0,
    this.curve = Curves.easeInOut,
    this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    this.duration = const Duration(milliseconds: 250),
  });

  /// A list of tabs to display
  final List<AppBottomBarItem> items;

  /// The tab to display
  final int currentIndex;

  final Function(int) onTap;

  /// The transition curve
  final Curve curve;

  /// The padding of each item.
  final EdgeInsets itemPadding;

  /// The transition duration
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final _selectedItemColor = AppColorScheme.of(context).primary;
    final _unselectedItemColor = AppColorScheme.of(context).primary;
    return SafeArea(
      child: Row(
        mainAxisAlignment: items.length <= 2 ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.spaceBetween,
        children: [
          for (final item in items)
            TweenAnimationBuilder<double>(
              tween: Tween(
                end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
              ),
              curve: curve,
              duration: duration,
              builder: (context, tween, duration) {
                return Material(
                  shape: const StadiumBorder(),
                  child: InkWell(
                    onTap: () => onTap.call(items.indexOf(item)),
                    customBorder: const StadiumBorder(),
                    focusColor: _selectedItemColor.withOpacity(0.1),
                    highlightColor: _selectedItemColor.withOpacity(0.1),
                    splashColor: _selectedItemColor.withOpacity(0.1),
                    hoverColor: _selectedItemColor.withOpacity(0.1),
                    child: Padding(
                      padding: itemPadding -
                          (Directionality.of(context) == TextDirection.ltr
                              ? EdgeInsets.only(right: itemPadding.right * tween)
                              : EdgeInsets.only(left: itemPadding.left * tween)),
                      child: Row(
                        children: [
                          IconTheme(
                            child: SvgPicture(
                              AssetBytesLoader(item.icon),
                              colorFilter: items.indexOf(item) == currentIndex
                                  ? AppColorScheme.of(context).primary.toColorFilter
                                  : AppColorScheme.of(context).inactive.toColorFilter,
                            ),
                            data: IconThemeData(
                              color: Color.lerp(_unselectedItemColor, _selectedItemColor, tween),
                              size: 24,
                            ),
                          ),
                          ClipRect(
                            child: SizedBox(
                              height: 20,
                              child: Align(
                                alignment: const Alignment(-0.2, 0.0),
                                widthFactor: tween,
                                child: Padding(
                                  padding: Directionality.of(context) == TextDirection.ltr
                                      ? EdgeInsets.only(left: itemPadding.left / 2, right: itemPadding.right)
                                      : EdgeInsets.only(left: itemPadding.left, right: itemPadding.right / 2),
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      color: Color.lerp(
                                        _unselectedItemColor,
                                        _selectedItemColor,
                                        tween,
                                      ),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    child: Text(item.title),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
