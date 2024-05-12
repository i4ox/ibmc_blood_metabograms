import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/app/app.dart';
import 'package:ibmc_blood_metabograms/app/widget/material_app_builder.dart.dart';
import 'package:ibmc_blood_metabograms/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

/// Main app widget
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => AppBloc()
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider<L10nBloc>(
          create: (context) => getIt<L10nBloc>()..add(LoadSavedL10n()),
        ),
      ],
      child: const MaterialAppBuilder(),
    );
  }
}
