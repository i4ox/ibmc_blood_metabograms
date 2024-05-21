import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kmk_viewer/assets/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.activity).existsSync(), isTrue);
    expect(File(SvgIcons.allAnalysis).existsSync(), isTrue);
    expect(File(SvgIcons.arrowLeft).existsSync(), isTrue);
    expect(File(SvgIcons.arrowRight).existsSync(), isTrue);
    expect(File(SvgIcons.bioAge).existsSync(), isTrue);
    expect(File(SvgIcons.chatgpt).existsSync(), isTrue);
    expect(File(SvgIcons.clinicalAnalysis).existsSync(), isTrue);
    expect(File(SvgIcons.colors).existsSync(), isTrue);
    expect(File(SvgIcons.dashboard).existsSync(), isTrue);
    expect(File(SvgIcons.devmode).existsSync(), isTrue);
    expect(File(SvgIcons.faq).existsSync(), isTrue);
    expect(File(SvgIcons.fonts).existsSync(), isTrue);
    expect(File(SvgIcons.icons).existsSync(), isTrue);
    expect(File(SvgIcons.kmk).existsSync(), isTrue);
    expect(File(SvgIcons.micrabiota).existsSync(), isTrue);
    expect(File(SvgIcons.profiles).existsSync(), isTrue);
    expect(File(SvgIcons.settings).existsSync(), isTrue);
    expect(File(SvgIcons.signatures).existsSync(), isTrue);
    expect(File(SvgIcons.theme).existsSync(), isTrue);
    expect(File(SvgIcons.translate).existsSync(), isTrue);
    expect(File(SvgIcons.uikit).existsSync(), isTrue);
    expect(File(SvgIcons.warning).existsSync(), isTrue);
    expect(File(SvgIcons.widgets).existsSync(), isTrue);
  });
}
