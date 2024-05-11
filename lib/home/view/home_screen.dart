import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(HomeCheckOnboarding());
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container();
      },
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