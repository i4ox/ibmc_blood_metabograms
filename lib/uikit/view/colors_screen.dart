import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).uikitColors,
          style: AppTextScheme.base().headline,
        ),
        leading: IconButton(
          icon: SvgPicture.asset(SvgIcons.arrowLeft),
          onPressed: () => getIt<GoRouter>().go("/settings"),
        ),
      ),
    );
  }
}
