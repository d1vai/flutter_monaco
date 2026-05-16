import 'dart:io';

import 'package:flutter_monaco/src/core/monaco_assets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

class _FakePathProviderPlatform extends PathProviderPlatform {
  _FakePathProviderPlatform(this.baseDir);

  final Directory baseDir;

  @override
  Future<String?> getApplicationSupportPath() async => baseDir.path;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MonacoAssets', () {
    late PathProviderPlatform originalPlatform;
    late Directory tempDir;

    setUp(() async {
      originalPlatform = PathProviderPlatform.instance;
      tempDir = await Directory.systemTemp.createTemp('monaco_assets_test_');
      PathProviderPlatform.instance = _FakePathProviderPlatform(tempDir);
      await MonacoAssets.clearCache();
    });

    tearDown(() async {
      await MonacoAssets.clearCache();
      PathProviderPlatform.instance = originalPlatform;
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('ensureReady extracts assets and writes sentinel', () async {
      await MonacoAssets.ensureReady();
      final info = await MonacoAssets.assetInfo();
      expect(info['exists'], true);
      final targetDir = info['path'] as String;
      final sentinel = File(p.join(targetDir, '.monaco_complete'));
      expect(sentinel.existsSync(), true);
      expect(sentinel.readAsStringSync().trim(), MonacoAssets.monacoVersion);
    });

    test('ensureReady is re-entrant', () async {
      await Future.wait(List.generate(5, (_) => MonacoAssets.ensureReady()));
      final info = await MonacoAssets.assetInfo();
      expect(info['exists'], true);
      final targetDir = info['path'] as String;
      expect(Directory(targetDir).existsSync(), true);
    });

    test('version mismatch forces re-extract', () async {
      final info = await MonacoAssets.assetInfo();
      final targetDir = info['path'] as String;
      final loader = File(p.join(targetDir, 'min', 'vs', 'loader.js'));
      await loader.parent.create(recursive: true);
      await loader.writeAsString('');
      final sentinel = File(p.join(targetDir, '.monaco_complete'));
      await sentinel.writeAsString('0.0.0');
      await MonacoAssets.ensureReady();
      expect(sentinel.readAsStringSync().trim(), MonacoAssets.monacoVersion);
    });

    test('clearCache removes assets and resets caches', () async {
      await MonacoAssets.ensureReady();
      final infoBefore = await MonacoAssets.assetInfo();
      expect(infoBefore['exists'], true);
      await MonacoAssets.clearCache();
      final infoAfter = await MonacoAssets.assetInfo();
      expect(infoAfter['exists'], false);
    });

    test('generated html includes mobile viewport metadata', () {
      final html = MonacoAssets.generateIndexHtml('min/vs');

      expect(html, contains('name="viewport"'));
      expect(
        html,
        contains(
          'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no',
        ),
      );
    });

    test('generated html does not override Monaco inputarea layout', () {
      final html = MonacoAssets.generateIndexHtml('min/vs');

      expect(html, isNot(contains('.monaco-editor .inputarea')));
      expect(html, isNot(contains('@media (pointer: coarse)')));
    });

    test('generated html includes tap-gated mobile gesture focus bridge', () {
      final html = MonacoAssets.generateIndexHtml('min/vs');

      expect(html, contains('const isMobileInputPlatform = () =>'));
      expect(html, contains("navigator.platform === 'MacIntel'"));
      expect(html, contains('navigator.maxTouchPoints > 1'));
      expect(html, contains('const focusEditorTextAreaNow = () =>'));
      expect(html, contains('const tapMoveThreshold = 12'));
      expect(html, contains('const compatibilityEventSuppressMs = 1200'));
      expect(html, contains('const beginTapCandidate = (event) =>'));
      expect(html, contains('const updateTapCandidate = (event) =>'));
      expect(html, contains('const blockEvent = (event) =>'));
      expect(html, contains('let suppressClickUntil = 0'));
      expect(html, contains('const suppressSyntheticClick = () =>'));
      expect(html, contains('const focusIfTapCandidate = (event) =>'));
      expect(html, contains('if (now < suppressClickUntil) {'));
      expect(
        html,
        contains('const suppressCompatibilityMouseEvent = (event) =>'),
      );
      expect(html, contains("node.addEventListener('pointerdown'"));
      expect(html, contains("node.addEventListener('pointermove'"));
      expect(html, contains("node.addEventListener('pointerup'"));
      expect(html, contains("node.addEventListener('pointercancel'"));
      expect(html, contains("node.addEventListener('touchstart'"));
      expect(html, contains("node.addEventListener('touchmove'"));
      expect(html, contains("node.addEventListener('touchend'"));
      expect(html, contains("node.addEventListener('touchcancel'"));
      expect(html, contains("node.addEventListener('mousedown'"));
      expect(html, contains("node.addEventListener('mouseup'"));
      expect(html, contains("node.addEventListener('click'"));
    });

    test('generated html keeps desktop preventScroll focus retry', () {
      final html = MonacoAssets.generateIndexHtml('min/vs');

      expect(html, contains('if (isMobileInputPlatform())'));
      expect(html, contains('focusEditorTextAreaNow();'));
      expect(html, contains('ta.focus({ preventScroll: true });'));
    });
  });
}
