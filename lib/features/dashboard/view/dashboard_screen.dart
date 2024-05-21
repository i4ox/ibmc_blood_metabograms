import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Dashboard screen widget
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

/// State for [DashboardScreen]
class _DashboardScreenState extends State<DashboardScreen> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).dashboard,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                      });
                    }),
                    sections: _showingSections(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            AppTileButton(text: "Просмотреть все анализы", icon: SvgVectors.allAnalysisSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "КМК", icon: SvgVectors.kmkSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "Микробиота", icon: SvgVectors.micrabiotaSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "Клинические анализы", icon: SvgVectors.clinicalAnalysisSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "Биологический возраст", icon: SvgVectors.bioAgeSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "Сигнатуры заболеваний", icon: SvgVectors.signaturesSvg, onClick: () {}),
            SizedBox(height: 10),
            AppTileButton(text: "FAQ", icon: SvgVectors.faqSvg, onClick: () {}),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _showingSections() {
    return List.generate(5, (index) {
      final isTouched = index == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (index) {
        case 0:
          return PieChartSectionData(
            color: AppColorScheme.of(context).primary,
            value: 20,
            title: "Good",
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.of(context).onPrimary,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColorScheme.of(context).primary,
            value: 20,
            title: "Good",
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.of(context).onPrimary,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: AppColorScheme.of(context).primary,
            value: 20,
            title: "Good",
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.of(context).onPrimary,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: AppColorScheme.of(context).primary,
            value: 20,
            title: "Good",
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.of(context).onPrimary,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: AppColorScheme.of(context).primary,
            value: 20,
            title: "Good",
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.of(context).onPrimary,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
