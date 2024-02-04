import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vanilla/flutter_vanilla.dart';

void main() {
  group('FlutterVanilla', () {
    test('can be instantiated', () {
      expect(const Vanilla(), isNotNull);
    });
  });
}
