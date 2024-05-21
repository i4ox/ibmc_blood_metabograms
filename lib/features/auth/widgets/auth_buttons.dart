import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/features/auth/auth.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Widget which build the indicators and buttons for [AuthScreen]
class AuthButtons extends StatelessWidget {
  const AuthButtons({
    super.key,
    required this.currentPage,
    required this.countOfDots,
    required this.pageController,
    required this.emailController,
    required this.passwordController,
  });

  final PageController pageController;

  final int countOfDots;

  final int currentPage;

  final TextEditingController emailController;

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorScheme.of(context).surface,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 35.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: currentPage == 0
              ? [
                  AppElevatedButton(
                    width: 100,
                    onClick: () => BlocProvider.of<AuthBloc>(context).add(Login(
                      email: emailController.text,
                      password: passwordController.text,
                    )),
                    child: Text(
                      S.of(context).login,
                      style: AppTextScheme.auth().label.copyWith(
                            color: AppColorScheme.of(context).onPrimary,
                          ),
                    ),
                  ),
                  AppTextButton(
                    width: 100,
                    title: S.of(context).signup,
                    onClick: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                      );
                    },
                  ),
                ]
              : [
                  AppTextButton(
                    width: 100,
                    title: S.of(context).login,
                    onClick: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                      );
                    },
                  ),
                  AppElevatedButton(
                    width: 100,
                    onClick: () => BlocProvider.of<AuthBloc>(context).add(Register(
                      email: emailController.text,
                      password: passwordController.text,
                    )),
                    child: Text(
                      S.of(context).signup,
                      style: AppTextScheme.auth().label.copyWith(
                            color: AppColorScheme.of(context).onPrimary,
                          ),
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
