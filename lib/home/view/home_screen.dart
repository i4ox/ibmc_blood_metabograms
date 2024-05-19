import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/home/bloc/home_bloc.dart';

/// Home screen widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

/// State for [HomeScreen]
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(HomeCheckOnboarding());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(), // placeholder
      listener: (context, state) {
        if (state is HomeOnboarding) {
          context.go('/onboarding');
        } else if (state is HomeClean) {
          context.go('/dashboard');
        }
      },
    );
  }
}
