import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('web focus handler only amplifies Monaco focus on desktop', () {
    final source = File('lib/src/platform/web_view_controller/web.dart')
        .readAsStringSync();
    final focusBlockStart = source
        .indexOf('// When Monaco reports focus, unfocus Flutter widgets.');
    final focusBlockEnd = source.indexOf('// Forward to all channels');

    expect(focusBlockStart, isNonNegative);
    expect(focusBlockEnd, greaterThan(focusBlockStart));

    final focusBlock = source.substring(focusBlockStart, focusBlockEnd);
    expect(
      focusBlock,
      contains('FocusManager.instance.primaryFocus?.unfocus();'),
    );
    expect(focusBlock, contains('if (!_isMobileInputPlatform())'));
    expect(focusBlock, contains('forceFocus()'));
    expect(source, contains('bool _isMobileInputPlatform()'));
    expect(source, contains('TargetPlatform.android'));
    expect(source, contains('TargetPlatform.iOS'));
  });
}
