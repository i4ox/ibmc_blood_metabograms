import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/features/settings/bloc/theme/theme_bloc.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/alert/app_alert_dialog_tile.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

class ChangeThemeAlertDialog {
  static void show(BuildContext context) {
    var selectedValue = BlocProvider.of<ThemeBloc>(context).state.themeMode.name;
    print(selectedValue);
    showDialog(
      context: context,
      builder: (context) {
        return BlocConsumer<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return AppAlertDialog(
              title: S.of(context).changeTheme,
              content: [
                AppAlertDialogTile(
                  title: S.of(context).darkTheme,
                  trailing: state.themeMode == ThemeMode.dark
                      ? Icon(Icons.check, color: AppColorScheme.of(context).primary)
                      : null,
                  onTap: () {
                    BlocProvider.of<ThemeBloc>(context).add(LoadTheme(themeMode: ThemeMode.dark));
                  },
                ),
                AppAlertDialogTile(
                  title: S.of(context).lightTheme,
                  trailing: state.themeMode == ThemeMode.light
                      ? Icon(Icons.check, color: AppColorScheme.of(context).primary)
                      : null,
                  onTap: () {
                    BlocProvider.of<ThemeBloc>(context).add(LoadTheme(themeMode: ThemeMode.light));
                  },
                ),
                AppAlertDialogTile(
                  title: S.of(context).systemTheme,
                  trailing: state.themeMode == ThemeMode.system
                      ? Icon(Icons.check, color: AppColorScheme.of(context).primary)
                      : null,
                  onTap: () {
                    BlocProvider.of<ThemeBloc>(context).add(LoadTheme(themeMode: ThemeMode.system));
                  },
                ),
              ],
            );
          },
          listener: (context, state) {
            selectedValue = state.themeMode.name;
          },
        );
      },
    );
  }
}
