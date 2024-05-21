import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kmk_viewer/assets/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.auth).existsSync(), isTrue);
    expect(File(Images.onboarding1).existsSync(), isTrue);
    expect(File(Images.onboarding2).existsSync(), isTrue);
    expect(File(Images.onboarding3).existsSync(), isTrue);
  });
}
