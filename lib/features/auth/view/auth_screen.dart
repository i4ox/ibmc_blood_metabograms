import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/features/auth/auth.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/colors/app_color_scheme.dart';

/// Auth screen widget
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    context.read<AuthBloc>().add(CheckAuthSession());
    super.initState();
  }

  final int _numPages = 2;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthShowPage) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: PageView(
                      allowImplicitScrolling: true,
                      physics: NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: List.generate(_numPages, (index) {
                        return AuthContent(
                          numPages: _numPages,
                          currentIndex: index,
                          emailController: _emailController,
                          passwordController: _passwordController,
                        );
                      }),
                    ),
                  ),
                  AuthButtons(
                    pageController: _pageController,
                    countOfDots: _numPages,
                    currentPage: _currentPage,
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                ],
              ),
            );
          }
          return Container();
        },
        listener: (context, state) {
          if (state is AuthSignIn) {
            Fluttertoast.showToast(
              msg: "Производится попытка входа",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              backgroundColor: AppColorScheme.of(context).primary,
              textColor: AppColorScheme.of(context).onPrimary,
            );
          } else if (state is AuthSignUp) {
          } else if (state is AuthShowFailure) {
            Fluttertoast.showToast(
              msg: state.failure,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.TOP,
              backgroundColor: AppColorScheme.of(context).primary,
              textColor: AppColorScheme.of(context).onPrimary,
            );
          } else if (state is AuthSuccessLogin) {
            Fluttertoast.showToast(
              msg: "Вход был успешно произведен",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.TOP,
              backgroundColor: AppColorScheme.of(context).primary,
              textColor: AppColorScheme.of(context).onPrimary,
            );
            getIt<GoRouter>().go("/dashboard");
          } else if (state is AuthInitial) {
            context.read<AuthBloc>().add(CheckAuthSession());
            setState(() {
              _currentPage = 0;
            });
          }
        },
      ),
    );
  }
}
