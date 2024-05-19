import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/uikit.dart';

/// Screen which help to change the locale
class L10nScreen extends StatelessWidget {
  const L10nScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedValue = BlocProvider.of<L10nBloc>(context).state.locale.languageCode;
    return BlocConsumer<L10nBloc, L10nState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: S.of(context).changeLanguage,
            icon: SvgVectors.arrowLeftSvg,
            onTap: () => getIt<GoRouter>().go("/settings"),
          ),
          body: ListView.builder(
            itemCount: S.supportedLocales.length,
            itemBuilder: (context, index) {
              var item = S.supportedLocales[index];
              return RadioListTile(
                value: item.languageCode,
                groupValue: selectedValue,
                title: Text(item.languageCode),
                onChanged: (value) {
                  BlocProvider.of<L10nBloc>(context).add(LoadL10n(locale: Locale(item.languageCode)));
                },
              );
            },
          ),
        );
      },
      listener: (context, state) {
        selectedValue = state.locale.languageCode;
      },
    );
  }
}
