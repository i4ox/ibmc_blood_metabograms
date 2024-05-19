import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/list/app_list_divider.dart';

/// Custom [ListView] for this app
class AppListView extends StatelessWidget {
  const AppListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;

  final Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: itemCount,
      separatorBuilder: (context, _) => AppListDivider(),
      itemBuilder: (context, index) => itemBuilder(context, index),
    );
  }
}
