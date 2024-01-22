import 'package:flutter_test/flutter_test.dart';
import 'package:sample_social_auth/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('GoogleAuthViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
