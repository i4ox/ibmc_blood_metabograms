import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_palette.dart';
import 'package:ibmc_blood_metabograms/uikit/text/ibmc_text_scheme.dart';

class OnboardingPage {

  static const List<Image> containersImages = [
    Image(
      image: AssetImage('assets/images/onboarding_pie_chart.png'),
      height: 355,
      width: 355,
    ),
    Image(
      image: AssetImage('assets/images/onboarding_doctor.png'),
      height: 415,
      width: 415,
    ),
    Image(
      image: AssetImage('assets/images/onboarding_doctor.png'),
      height: 375,
      width: 375,
    ),
  ];

  static const titlesTexts = [
    'Просматривай анализы',
    'Закажите консультацию',
    'Огромный спектр услуг',
  ];

  static const contentTexts = [
    '''Приложение позволяет просматривать как краткую сводку о состоянии пациента,
    так и крайне развернутую и детальную статиску на основе таблиц и графов''',
    '''Вам не понятны анализы? Запишитесь через приложения к специалисту или
    выполните анализ через искусственный интеллект с точностью в 87%''',
    '''В приложении вы сможете найти разный функционал.
    От просмотра анализов до генерации научных публикаций при помощи ИИ на основе собранных анализов''', 
  ];


  static double _getImageTopPadding(int page) {
    switch (page) {
      case 1:
        return 70.0;
    }
    return 0.0;
  }

  static List<Widget> build(BuildContext context, int numPages) {
    return List.generate(numPages, (index) {
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
                    top: _getImageTopPadding(index),
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: containersImages[index],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.48,
              child: Container(
                decoration: BoxDecoration(
                  color: IbmcColorPalette.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                    topEnd: Radius.circular(20),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20.0, 
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        titlesTexts[index],
                        textAlign: TextAlign.center,
                        style: IbmcTextScheme.onboarding().display,
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        contentTexts[index],
                        textAlign: TextAlign.center,
                        style: IbmcTextScheme.onboarding().headline.copyWith(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
