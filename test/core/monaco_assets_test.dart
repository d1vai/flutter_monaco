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
      expect(html, contains('const ownerDocument = node.ownerDocument'));
      expect(html, contains('const ownerWindow = ownerDocument.defaultView'));
      expect(html, contains('const isAndroid = /Android/i.test(ua)'));
      expect(html, contains('const isFlutterWebEmbed = (() =>'));
      expect(html, contains('const tapMoveThreshold = 8'));
      expect(html, contains('const tapTimeThreshold = 650'));
      expect(html, contains('const compatibilityEventSuppressMs = 1200'));
      expect(html, contains('let androidTouchScrollGesture = null'));
      expect(html, contains('let suppressFocusUntil = 0'));
      expect(html, contains('const usePointerTapBridge ='));
      expect(html, contains('supportsPointerEvents && isAndroid'));
      expect(html, contains('const useTouchTapBridge = !usePointerTapBridge'));
      expect(html, contains('const useAndroidWebFocusGuard ='));
      expect(html,
          contains('const mobileGestureDebugMode = getGestureDebugMode();'));
      expect(html, contains('const debugMobileGesture ='));
      expect(html, contains("event: 'mobileGestureDebug'"));
      expect(html, contains('window.flutterMonaco.getGestureDebugLog'));
      expect(html, contains('const getScrollSnapshot = () =>'));
      expect(html, contains('ed.getScrollTop'));
      expect(html, contains('ed.getScrollLeft'));
      expect(html, contains('const hasMovedFromStart = (event) =>'));
      expect(
        html,
        contains('const hasTouchScrollMovedFromStart = (event) =>'),
      );
      expect(html, contains('const blockEvent = (event) =>'));
      expect(html, contains('const suppressAndBlock = (event) =>'));
      expect(html, contains('const editorInputSelector ='));
      expect(html, contains('textarea.inputarea, .native-edit-context'));
      expect(html, contains('const isEditorInputElement ='));
      expect(html, contains('const getEditorInputElement ='));
      expect(html, contains('let maxObservedViewportHeight = 0'));
      expect(html, contains('const isKeyboardLikelyVisible ='));
      expect(
          html, contains('keyboardLikelyVisible: isKeyboardLikelyVisible()'));
      expect(html, contains('const suppressScrollFocusIfNeeded ='));
      expect(html, contains('willBlurEditorInput: !keyboardVisible'));
      expect(html, contains('const guardSuppressedTextAreaFocus ='));
      expect(html, contains('const logTextAreaFocusEvent ='));
      expect(html, contains('const endGesture = (event, id, kind) =>'));
      expect(html, contains('suppressAndBlock(event);'));
      expect(html, contains('const capturePassiveFalse ='));
      expect(html, contains("ownerDocument.addEventListener('pointerdown'"));
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('pointerup', onPointerUp, capturePassiveFalse",
        ),
      );
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('touchend', onTouchEnd, capturePassiveFalse",
        ),
      );
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('touchend', endAndroidTouchScrollGuard, capturePassiveFalse",
        ),
      );
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('focusin', guardSuppressedTextAreaFocus",
        ),
      );
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('focusin', logTextAreaFocusEvent",
        ),
      );
      expect(
        html,
        contains(
          "ownerDocument.addEventListener('click', blockSuppressedCompatibilityEvent",
        ),
      );
      expect(html, contains('node.style.touchAction'));
      expect(html, isNot(contains('focusFromClick')));
    });

    test('generated html can compile-enable mobile gesture debug logging', () {
      final html = MonacoAssets.generateIndexHtml(
        'min/vs',
        gestureDebugEnabled: true,
      );

      expect(html, contains("return true ? '1' : '';"));
      expect(html, contains('[flutter_monaco][gesture]'));
      expect(html, contains('postMessageToFlutter(entry);'));
    });

    test('generated html keeps desktop preventScroll focus retry', () {
      final html = MonacoAssets.generateIndexHtml('min/vs');

      expect(html, contains('if (isMobileInputPlatform())'));
      expect(html, contains('focusEditorTextAreaNow();'));
      expect(html, contains('ta.focus({ preventScroll: true });'));
    });
  });
}
