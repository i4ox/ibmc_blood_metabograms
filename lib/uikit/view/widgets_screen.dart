import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).uikitWidgets,
          style: AppTextScheme.base().headline,
        ),
        leading: IconButton(
          icon: SvgPicture.asset(SvgIcons.arrowLeft),
          onPressed: () => getIt<GoRouter>().go("/settings"),
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
