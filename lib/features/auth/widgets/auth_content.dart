import 'package:flutter/material.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Widget which build the content for [AuthScreen]
class AuthContent extends StatelessWidget {
  const AuthContent({
    super.key,
    required this.numPages,
    required this.currentIndex,
    required this.emailController,
    required this.passwordController,
  });

  final int numPages;

  final int currentIndex;

  final TextEditingController emailController;

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Image(
                  image: AssetImage(Images.auth),
                  width: 450,
                  height: 450,
                  color: AppColorScheme.of(context).primary,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.48,
            child: Container(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 30.0,
                right: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _getAuthTitle(context, currentIndex),
                    textAlign: TextAlign.start,
                    style: AppTextScheme.onboarding().headline,
                  ),
                  const SizedBox(height: 30.0),
                  AppTextField(
                    controller: emailController,
                    text: S.of(context).enterTheEmail,
                  ),
                  const SizedBox(height: 20.0),
                  AppTextField(
                    controller: passwordController,
                    text: S.of(context).enterThePassword,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Helper function which return the title of active part of [AuthScreen]
  String _getAuthTitle(BuildContext context, int index) {
    List<String> titles = <String>[
      S.of(context).loginToYourAccount,
      S.of(context).createAnAccount,
    ];
    return titles[index];
  }
}
