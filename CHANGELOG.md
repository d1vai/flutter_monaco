# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.7.0] - 2026-05-19

Better theming, typed Monaco theme registration, and a stricter JS bridge contract. Adds the building blocks for using `flutter_monaco` as a drop-in replacement for native Flutter code editors. See the README's "Migrating from another Flutter code editor" section for the full pattern.

### Added
- **Themable chrome.** `MonacoEditorTheme` (an `InheritedTheme`) and `MonacoEditorThemeData` style the built-in loading, error, and status-bar widgets. Nested themes compose; missing values fall back to the surrounding Material theme.
- **Typed Monaco themes.** `MonacoController.defineTheme(MonacoThemeDefinition)` registers custom syntax themes; `defineThemeFromJson(id, data)` accepts raw Monaco theme JSON. `MonacoThemeDefinition`/`MonacoThemeRule` round-trip via `toJson()`/`fromJson()` for app-level persistence, and `MonacoThemeDefinition.fromMonacoThemeData(id, data)` loads third-party theme files that don't carry a registration id.
- **Theme-id selection.** `EditorOptions.themeId` overrides the built-in `theme` enum and `MonacoController.setThemeById(id)` switches themes by raw id - useful for persisting user theme choices.
- **`setHostPageBackgroundColor(color)`.** Recolors Monaco's HTML host page; more reliable than the native WebView background on macOS.
- **`MonacoJavaScriptException`.** Typed errors from the JS bridge with `operation`, `name`, `message`, `stack`, and raw `details`.

### Changed
- **Strict JS bridge.** Command methods (`setValue`, `setTheme`, `setLanguage`, `executeAction`, `applyEdits`, `setDecorations`, `setMarkers`, `setJsonDiagnostics`, and others) surface failures as `MonacoJavaScriptException` instead of returning silent fallback values. Reads (`getValue`, `getLineCount`, `getLineContent`) still honor their `defaultValue` parameter.
- **`MonacoEditor.backgroundColor:` recolors both layers.** Applies the color to the native WebView container and the HTML host page. `MonacoController.setBackgroundColor` remains scoped to the native container.
- **Empty theme ids rejected.** `setThemeById` and `defineThemeFromJson` throw `ArgumentError` instead of activating Monaco's empty-id fallback.

### Docs
- New README section: "Migrating from another Flutter code editor" - settings model mapping, custom theme registration, chrome theming, toolbar wiring, and background color choices.

## [1.6.0] - 2026-05-18

### Added
- `MonacoOverlayBoundary` widget and `MonacoScaffold` convenience wrapper for static Flutter overlays (FABs, drawers, persistent bars, custom `Stack` children) that previously had pointer events swallowed by the editor iframe on Web. `MonacoScaffold` auto-protects the standard Scaffold overlay slots (`floatingActionButton`, `drawer`, `endDrawer`, `bottomSheet`, `bottomNavigationBar`, `persistentFooterButtons`); `MonacoOverlayBoundary` is the underlying primitive for arbitrary overlay subtrees.
- `MonacoController.runWithInteractionDisabled(action)` for transient overlays (snackbars, toasts, imperative `Overlay.insert` entries) that are neither route-based nor static enough for `MonacoOverlayBoundary`.
- Internal `MonacoWebInteractionCoordinator` that ref-counts iframe pointer-events so route overlays (`MonacoFocusGuard`) and static overlays compose without fighting.

### Fixed
- Fixed soft keyboard activation for `MonacoEditor` on native Android and iOS by letting the platform view own the tap-to-input gesture path.
- Fixed Android Flutter Web scroll gestures so scrolling focused Monaco content no longer opens the keyboard on release, while preserving intentional keyboard-open scrolling.
- Fixed a Flutter Web first-load race by waiting for iframe attachment and retrying transient Monaco load failures.
- Fixed the example iOS runner build configuration.

### Changed
- Example app switched to `MonacoScaffold`, wired `MonacoRouteObserver` + `MonacoFocusGuard`, and dropped the `pointer_interceptor` dependency.

### Docs
- Rewrote the README "Web: Handling Overlays" section to cover route overlays (`MonacoFocusGuard`), static overlays (`MonacoScaffold` / `MonacoOverlayBoundary`), and transient overlays (`runWithInteractionDisabled`).

## [1.5.0] - 2026-05-16

### Added
- JSON diagnostics support: `MonacoController.setJsonDiagnostics()` enables schema-based validation with inline errors and warnings for JSON content.
- `JsonDiagnosticsOptions` and `JsonDiagnosticsSchema` models for configuring validation rules, severity levels, and schema associations.
- `DiagnosticsSeverity` enum (`error`, `warning`, `ignore`) for controlling diagnostic severity across JSON language features.
- Added `MonacoController.runJavaScript(String script)` as an advanced fire-and-forget JavaScript escape hatch. It waits for the editor to be ready before executing.
- Added `MonacoController.evaluateJavaScript<T>(String expression, {T? defaultValue})` for typed JavaScript evaluation with cross-platform result normalization.
- Added `MonacoController.runJavaScriptReturningResultRaw(String script)` for advanced callers who need the platform-native return value.

### Fixed
- `JsonDiagnosticsSchema.fromJson` now throws when both `uri` and `schemaUri` keys are missing instead of silently falling back to a bogus URI.

### Security
- Documented that JavaScript escape-hatch methods do not sanitize input and that callers should use `jsonEncode` when embedding dynamic values.

## [1.4.0] - 2026-01-25

### Added
- Added `interactionEnabled` to `MonacoEditor` and `MonacoController.setInteractionEnabled`. This allows Flutter Web overlays (dialogs, dropdowns) to receive pointer events when they overlap the Monaco editor.
- Added `autoDisableInteraction` to `MonacoFocusGuard` to automatically toggle editor interaction based on route changes.
- Web: Focus enforcement is now gated by the interaction flag to prevent focus stealing when overlays are active.

### Fixed
- `createModel` now returns a valid URI or throws when Monaco returns invalid data.
- `lineHeight` now behaves as a multiplier in Dart and is converted to pixels for Monaco.
- Completion suggestions now fall back to the default range when item ranges are omitted.
- Font ligatures respect `EditorOptions.fontLigatures`.
- Windows message logging is gated for debug builds to avoid release noise.

## [1.3.0] - 2026-01-24

- Added Web platform support.

## [1.2.1] - 2026-01-08
### Fixed
- Publish workflow now uses GitHub OIDC via the official Dart publish workflow.

## [1.2.0] - 2026-01-08
### Added
- `MonacoAction` registry with comprehensive Monaco 0.54.0 action IDs for type-safe `executeAction` calls.
- Test utilities for platform WebView and controller bootstrapping (`PlatformWebViewController`, `MonacoController.createForTesting`).

### Changed
- Unknown language/theme IDs now default to `markdown` and `vsDark` respectively.
- Controller bootstrapping and WebView initialization now use a unified platform adapter with safer lifecycle handling.

### Fixed
- `executeAction` now tries `editor.getAction(id).run()` first, then falls back to `trigger` for broader action support.
- Asset extraction now reports incomplete copies and resets initialization state after failures.

## [1.1.1] - 2025-11-16
### Changed
- Bundled Monaco Editor updated to **v0.54.0** (latest stable drop from Microsoft). Existing apps automatically pick up the new assets on next launch.

## [1.1.0] - 2025-11-16
### Added
- Full IntelliSense bridge: JavaScript hooks + `MonacoController.registerCompletionSource` / `registerStaticCompletions`.
- Strongly typed completion models (`CompletionItem`, `CompletionList`, `CompletionRequest`, `CompletionItemKind`, `InsertTextRule`).
- README + example updates showing how to source completions from snippets or remote services.

### Fixed
- Export ordering and analyzer fixes to keep the public API clean.

## [1.0.0] - 2025-09-15
- Reliable typing after route/app switches on macOS/Windows - no right‑click needed.
- Optional `MonacoFocusGuard` to auto‑restore focus on resume/route return.
- New guide: doc/focus-and-platform-views.md with best practices and snippets.
- Sensible defaults: word wrap ON, minimap OFF, consistent across APIs.

## [0.1.0] - 2025-08-16

### Initial Release 🎉

#### Features
- **Full Monaco Editor Integration** - Complete VS Code editor experience in Flutter
- **100+ Language Support** - Syntax highlighting for all major programming languages
- **Multiple Themes** - VS Light, VS Dark, High Contrast Black, High Contrast Light
- **Cross-Platform Support** - Works on Android, iOS, macOS, and Windows
- **Type-Safe API** - Comprehensive typed bindings with enums for all configurations
- **Multi-Editor Support** - Run multiple independent editor instances
- **Live Statistics** - Real-time line/character counts and selection information
- **Find & Replace** - Full programmatic find/replace with regex support
- **Decorations & Markers** - Add highlights, errors, warnings to code
- **Event Streams** - Listen to content changes, selection, focus events
- **Versioned Asset Caching** - Efficient one-time asset installation (~30MB)
- **Custom Fonts** - Support for Fira Code, JetBrains Mono, Cascadia Code, and more
- **Editor Actions** - Format, undo, redo, cut, copy, paste, select all
- **Clipboard Operations** - Full clipboard support across platforms
- **Navigation** - Scroll to top/bottom, reveal line, focus management
- **Content Management** - Get/set value, language switching, theme switching
- **Advanced Options** - Word wrap, minimap, line numbers, rulers, bracket colorization

#### Platform Requirements
- **Android**: 5.0+ (API level 21)
- **iOS**: 11.0+
- **macOS**: 10.13+
- **Windows**: 10 version 1809+ with WebView2 Runtime

#### Known Limitations
- Web platform not supported (asset bundling limitations)
- Linux platform not supported (WebKitGTK integration pending)
- Initial startup requires ~1-2 seconds for asset extraction (one-time)
- Each editor instance consumes ~30-100MB memory depending on content

#### Dependencies
- `webview_flutter`: - For mobile and macOS WebView
- `webview_windows`: - For Windows WebView2
- `path_provider`: - For asset caching
- `dart_helper_utils`: - For utility extensions
- `freezed`: - For immutable models

[0.1.0]: https://github.com/omar-hanafy/flutter_monaco/releases/tag/v0.1.0
