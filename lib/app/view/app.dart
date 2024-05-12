import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/app/app.dart';
import 'package:ibmc_blood_metabograms/app/widget/material_app_widget.dart';
import 'package:ibmc_blood_metabograms/config/s.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';

/// Main app widget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc()
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => MaterialAppWidget(
          locale: S.en,//state.locale,
        ),
      ),
    );
  }
}
