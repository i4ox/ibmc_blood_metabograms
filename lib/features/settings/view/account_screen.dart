import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/features/auth/auth.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).changeLanguage,
        icon: SvgVectors.arrowLeftSvg,
        onTap: () => getIt<GoRouter>().go("/settings"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AppTileButton(
              icon: SvgVectors.arrowLeftSvg,
              text: "Выйти из аккаунта",
              onClick: () {
                BlocProvider.of<AuthBloc>(context).add(DeleteSession());
                getIt<GoRouter>().go("/auth");
              },
            ),
          ],
        ),
      ),
    );
  }
}
