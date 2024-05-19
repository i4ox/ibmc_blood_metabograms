import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';

void main() {
  test('svg_vectors assets test', () {
    expect(File(SvgVectors.activitySvg).existsSync(), isTrue);
    expect(File(SvgVectors.arrowLeftSvg).existsSync(), isTrue);
    expect(File(SvgVectors.arrowRightSvg).existsSync(), isTrue);
    expect(File(SvgVectors.chatgptSvg).existsSync(), isTrue);
    expect(File(SvgVectors.colorsSvg).existsSync(), isTrue);
    expect(File(SvgVectors.dashboardSvg).existsSync(), isTrue);
    expect(File(SvgVectors.devmodeSvg).existsSync(), isTrue);
    expect(File(SvgVectors.fontsSvg).existsSync(), isTrue);
    expect(File(SvgVectors.iconsSvg).existsSync(), isTrue);
    expect(File(SvgVectors.profilesSvg).existsSync(), isTrue);
    expect(File(SvgVectors.settingsSvg).existsSync(), isTrue);
    expect(File(SvgVectors.themeSvg).existsSync(), isTrue);
    expect(File(SvgVectors.translateSvg).existsSync(), isTrue);
    expect(File(SvgVectors.uikitSvg).existsSync(), isTrue);
    expect(File(SvgVectors.widgetsSvg).existsSync(), isTrue);
  });
}
