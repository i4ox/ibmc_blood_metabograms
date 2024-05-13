import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.onboarding1).existsSync(), isTrue);
    expect(File(Images.onboarding2).existsSync(), isTrue);
    expect(File(Images.onboarding3).existsSync(), isTrue);
  });
}
