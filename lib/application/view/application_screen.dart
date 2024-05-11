import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/application/cubit/application_cubit.dart';
import 'package:ibmc_blood_metabograms/application/view/application_view.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';

@RoutePage()
class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ApplicationCubit>(),
      child: ApplicationView(),
    );   
  }
}
