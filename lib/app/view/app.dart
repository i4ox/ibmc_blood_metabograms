import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/app/app.dart';
import 'package:kmk_viewer/app/widget/widget.dart';
import 'package:kmk_viewer/features/auth/auth.dart';
import 'package:kmk_viewer/features/auth/bloc/auth_bloc.dart';
import 'package:kmk_viewer/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:kmk_viewer/features/settings/bloc/theme/theme_bloc.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/service_locator.dart';

/// Main app widget
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

/// State for [App]
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<AppBloc>(
          create: (context) => AppBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider<L10nBloc>(
          create: (context) => getIt<L10nBloc>()..add(LoadSavedL10n()),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => getIt<ThemeBloc>()..add(LoadSavedTheme()),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: const MaterialAppBuilder(),
    );
  }
}
