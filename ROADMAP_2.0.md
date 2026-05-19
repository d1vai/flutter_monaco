# Roadmap: flutter_monaco 2.0.0

## TL;DR

Convert `MonacoAction` and `MonacoTheme` from sealed types (class of `static const String`, enum) into **freezed value classes**. Drop `EditorOptions.themeId` and `effectiveThemeId` — the value-class `MonacoTheme` handles built-in and custom themes through a single typed field. Same shape on both surfaces; no parallel string-id APIs.

After 2.0:

```dart
// Themes - single typed field for built-in and custom alike
EditorOptions(theme: MonacoTheme.vsDark);                // built-in
EditorOptions(theme: const MonacoTheme('app-dark'));     // custom
EditorOptions(theme: .vsDark);                            // dot shorthand (built-ins)

// Actions - single typed method for built-in and custom alike
await controller.executeAction(MonacoAction.foldAll);
await controller.executeAction(const MonacoAction('editor.action.peekDefinition'));
await controller.executeAction(.foldAll);
```

## Why 2.0

Both `MonacoAction` and `MonacoTheme` are modeled with sealed Dart types in 1.x (class of `static const String` and `enum` respectively). Sealed types can't accept user-defined values, so 1.7.0 introduced a parallel field (`EditorOptions.themeId`) to carry the custom-theme case. Actions would have needed the same workaround (`executeActionById`).

That workaround is the smell. The right shape is a single open type for each surface — a freezed value class with a public const constructor and `static const` built-ins. One field. One method. No parallel APIs.

## Goals

- Single typed `MonacoTheme` for built-in and custom themes (drop `themeId`).
- Single typed `MonacoAction` for built-in and custom actions (no `executeActionById`).
- Match the repo convention — freezed models for typed value objects.
- Unlock Dart 3.10+ dot shorthand on both surfaces.

## Non-goals

- Migrating the remaining 20 unwrapped JS helpers into the bridge envelope (revisit in 2.x patches).
- Restructuring `MonacoEditorTheme`, `MonacoThemeDefinition`, or other 1.7.0 architecture.
- Performance instrumentation of envelope round-trips.
- Adding new built-in actions or themes beyond what 1.x ships.

## Headline design

### `MonacoAction` as freezed value class

```dart
// lib/src/models/monaco_action.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monaco_action.freezed.dart';

@freezed
sealed class MonacoAction with _$MonacoAction {
  /// Constructs a Monaco action from its command id.
  ///
  /// Use this directly for actions not enumerated as `static const` below
  /// (e.g. custom commands registered via Monaco's `editor.addCommand`).
  const factory MonacoAction(String id) = _MonacoAction;

  const MonacoAction._();

  // Built-in actions - preserves every name and id from 1.x.
  static const foldAll = MonacoAction('editor.foldAll');
  static const unfoldAll = MonacoAction('editor.unfoldAll');
  static const toggleLineComment = MonacoAction('editor.action.commentLine');
  static const indentLines = MonacoAction('editor.action.indentLines');
  static const outdentLines = MonacoAction('editor.action.outdentLines');
  static const formatDocument = MonacoAction('editor.action.formatDocument');
  static const find = MonacoAction('actions.find');
  static const startFindReplaceAction =
      MonacoAction('editor.action.startFindReplaceAction');
  static const selectAll = MonacoAction('editor.action.selectAll');
  static const toggleWordWrap = MonacoAction('editor.action.toggleWordWrap');
  static const undo = MonacoAction('undo');
  static const redo = MonacoAction('redo');
  static const clipboardCutAction =
      MonacoAction('editor.action.clipboardCutAction');
  static const clipboardCopyAction =
      MonacoAction('editor.action.clipboardCopyAction');
  static const clipboardPasteAction =
      MonacoAction('editor.action.clipboardPasteAction');
  // ... ~35 more, one per existing static const in 1.x's monaco_actions.dart ...

  /// All built-in actions shipped with the package.
  static const values = <MonacoAction>[
    foldAll, unfoldAll, toggleLineComment, indentLines, outdentLines,
    formatDocument, find, startFindReplaceAction, selectAll, toggleWordWrap,
    undo, redo, clipboardCutAction, clipboardCopyAction, clipboardPasteAction,
    // ... rest ...
  ];

  /// Looks up a built-in action by raw id, or returns null if unknown.
  ///
  /// Custom actions can still be constructed directly via the constructor.
  static MonacoAction? fromId(String id) {
    for (final action in values) {
      if (action.id == id) return action;
    }
    return null;
  }
}
```

Note: freezed factory constructors are conventionally named in this codebase (`const factory Foo({required String id})`), but `MonacoAction(String id)` reads cleaner at call sites. Verify positional const factory support during Phase 1 implementation; fall back to named if freezed insists.

### `MonacoTheme` as freezed value class

```dart
// lib/src/models/monaco_theme.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monaco_theme.freezed.dart';

@freezed
sealed class MonacoTheme with _$MonacoTheme {
  const factory MonacoTheme(String id) = _MonacoTheme;
  const MonacoTheme._();

  // Built-in themes - same names and ids as 1.x.
  static const vs = MonacoTheme('vs');
  static const vsDark = MonacoTheme('vs-dark');
  static const hcBlack = MonacoTheme('hc-black');
  static const hcLight = MonacoTheme('hc-light');

  /// All built-in themes.
  static const values = <MonacoTheme>[vs, vsDark, hcBlack, hcLight];

  /// Human-readable label for built-in themes; `null` for custom themes.
  /// Apps shipping their own custom themes can carry labels in their own
  /// settings model and look them up by `theme.id`.
  String? get label {
    switch (id) {
      case 'vs':
        return 'Light';
      case 'vs-dark':
        return 'Dark';
      case 'hc-black':
        return 'High Contrast Dark';
      case 'hc-light':
        return 'High Contrast Light';
      default:
        return null;
    }
  }

  /// Looks up a built-in theme by raw id, or returns null if unknown.
  static MonacoTheme? fromId(String id) {
    for (final theme in values) {
      if (theme.id == id) return theme;
    }
    return null;
  }
}
```

### Controller surface

```dart
class MonacoController {
  // ... existing members ...

  /// Single typed action dispatch. Built-in and custom actions go through
  /// the same method. Works with Dart 3.10+ dot shorthand for built-ins:
  ///
  /// ```dart
  /// await controller.executeAction(.foldAll);
  /// await controller.executeAction(const MonacoAction('editor.action.peekDefinition'));
  /// ```
  Future<void> executeAction(MonacoAction action, [Object? args]) async {
    await _invokeMonacoCommand('executeAction', [action.id, args]);
  }

  /// Single typed theme switch. Accepts both built-in and custom themes.
  /// No setThemeById - just wrap a raw string: `setTheme(MonacoTheme(id))`.
  Future<void> setTheme(MonacoTheme theme) async {
    await _invokeMonacoCommand('setTheme', [theme.id]);
  }
}
```

### `EditorOptions` cleanup

```dart
// Before (1.7.0)
@Default(MonacoTheme.vsDark) MonacoTheme theme,
String? themeId,                    // removed
String get effectiveThemeId => ...; // removed

// After (2.0)
@Default(MonacoTheme.vsDark) MonacoTheme theme,  // sole theme field
```

## Breaking changes summary

| Before (1.x) | After (2.0) | Migration |
|---|---|---|
| `MonacoAction.foldAll` is `String` | `MonacoAction.foldAll` is `MonacoAction` | Use `.id` when raw String is needed |
| `executeAction(String, [dynamic])` | `executeAction(MonacoAction, [Object?])` | Wrap raw strings: `MonacoAction(id)` |
| `MonacoTheme` is an `enum` | `MonacoTheme` is a value class (freezed) | Built-in values unchanged: `MonacoTheme.vsDark` still works |
| `EditorOptions(theme: ..., themeId: 'app-dark')` | `EditorOptions(theme: MonacoTheme('app-dark'))` | Replace `themeId:` with `theme: MonacoTheme(...)` |
| `EditorOptions.themeId`, `effectiveThemeId` | (removed) | Use `theme.id` |
| `MonacoController.setThemeById(String)` | `setTheme(MonacoTheme)` | Wrap raw strings: `setTheme(MonacoTheme(id))` |
| `MonacoControllerMigrationActions` extension | (removed - dot shorthand covers it) | `controller.executeAction(.foldAll)` |
| Optional args type: `dynamic` | Optional args type: `Object?` | Most callers unaffected; explicit `dynamic` users may need casts |
| Min Dart SDK: `>=3.0.0` | Min Dart SDK: `>=3.10.0` (dot shorthand) | Bump SDK constraint |

## Migration guide for users

### Built-in actions and themes - call sites identical

```dart
// Identical in 1.x and 2.0
await controller.executeAction(MonacoAction.foldAll);
EditorOptions(theme: MonacoTheme.vsDark);
```

### Storing actions or themes as `String`s

```dart
// Before
prefs.setString('action', MonacoAction.foldAll);          // implicit String
prefs.setString('theme', MonacoTheme.vsDark.id);          // (already .id)

// After
prefs.setString('action', MonacoAction.foldAll.id);       // explicit .id
prefs.setString('theme', MonacoTheme.vsDark.id);          // unchanged
```

### Custom actions

```dart
// Before
await controller.executeAction('editor.action.peekDefinition');

// After
await controller.executeAction(
  const MonacoAction('editor.action.peekDefinition'),
);
```

### Custom themes - single field now

```dart
// Before (1.7.0): two-field workaround
EditorOptions(
  theme: MonacoTheme.vsDark,
  themeId: 'app-dark',
);

// After (2.0): single typed field
EditorOptions(theme: const MonacoTheme('app-dark'));
```

### Round-tripping persisted strings

```dart
// Built-in lookup, fallback if unknown
final action = MonacoAction.fromId(prefs.getString('action')!)
    ?? MonacoAction.foldAll;
await controller.executeAction(action);

// Custom: just construct from the saved id
await controller.executeAction(MonacoAction(prefs.getString('action')!));

// Themes follow the same pattern
EditorOptions(theme: MonacoTheme(prefs.getString('theme')!));
```

### Dot shorthand (Dart 3.10+) - new in 2.0

```dart
await controller.executeAction(.foldAll);
EditorOptions(theme: .vsDark);
await controller.setTheme(.hcBlack);
```

## Implementation plan

Each phase = one atomic commit. Run `flutter analyze` + `flutter test` before committing.

### Phase 1: Convert `MonacoAction` to freezed value class

- Move `lib/src/core/monaco_actions.dart` → `lib/src/models/monaco_action.dart` (singular, matches freezed pattern).
- Replace class-of-static-strings with `@freezed sealed class MonacoAction`.
- Preserve every constant name and id verbatim.
- Add `static const values` list and `MonacoAction.fromId(String)` helper.
- Update barrel export path.
- Run `dart run build_runner build --delete-conflicting-outputs`.

### Phase 2: Convert `MonacoTheme` to freezed value class

- Extract from `lib/src/models/monaco_enums.dart` into `lib/src/models/monaco_theme.dart`.
- Replace `enum MonacoTheme` with `@freezed sealed class MonacoTheme`.
- Preserve constant names and ids.
- Add `static const values`, `fromId`, and `label` getter.
- Update barrel export.
- Run codegen.

### Phase 3: Retype controller methods

- `executeAction(MonacoAction action, [Object? args])` — typed primary, no escape hatch.
- `setTheme(MonacoTheme theme)` — accepts built-in and custom (replaces `setThemeById`).
- Remove `setThemeById(String)` entirely.
- Internal callers (`format`, `find`, `replace`, etc.) compile unchanged - they already pass `MonacoAction.X` values.

### Phase 4: Clean up `EditorOptions`

- Remove `themeId` field.
- Remove `effectiveThemeId` getter.
- Update `fromJson` to read only the `theme` field. Built-in ids parse via `MonacoTheme.fromId`; unknown ids construct a custom `MonacoTheme(id)` directly.
- Run codegen.

### Phase 5: Drop the `MonacoControllerMigrationActions` extension

- Delete `lib/src/core/monaco_controller_actions.dart`.
- Remove export from `lib/flutter_monaco.dart`.
- Remove README reference.

### Phase 6: SDK constraint bump

- `pubspec.yaml`: `sdk: ">=3.10.0 <4.0.0"`.
- `example/pubspec.yaml`: same constraint.

### Phase 7: Test cleanup

- `test/core/monaco_actions_test.dart`: drop regex-based source scraping in favor of iterating `MonacoAction.values`.
- New tests: `MonacoAction.fromId` (known + unknown), `MonacoTheme.fromId`, custom-id construction, dot shorthand compilation.
- Update `EditorOptions.fromJson` tests for single-field design (no more themeId vs theme split).

### Phase 8: Documentation

- README Quick Start: typed action + dot shorthand.
- README "Migrating from another Flutter code editor": single-field theme example, custom-action constructor.
- CHANGELOG 2.0.0 entry: `### Breaking` section with the migration table verbatim, plus a `### Migration` subsection.

### Phase 9: Release prep

- `dart format .`, `flutter analyze`, `flutter test --coverage`.
- `pubspec.yaml`: `version: 2.0.0`.
- `dart pub publish --dry-run` returns 0 warnings.

## What we keep from 1.7.0

- `MonacoEditorTheme` (InheritedTheme) + `MonacoEditorThemeData` — unchanged.
- `MonacoEditorThemeData.merge(other)` — kept; serves a different ergonomic from `copyWith` (composing two instances vs. overriding specific fields).
- `MonacoThemeDefinition` + `MonacoThemeRule` (freezed) — unchanged. Still the path for registering custom syntax themes.
- `defineTheme(MonacoThemeDefinition)` + `defineThemeFromJson(String, Map)` — unchanged.
- `setBackgroundColor` + `setHostPageBackgroundColor` split — unchanged.
- `MonacoJavaScriptException` + `_invokeMonacoCommand` envelope — unchanged.

## Things to decide before starting

1. **Freezed factory: positional or named?** Codebase convention is named (`const factory Foo({required String id})`). Positional reads cleaner at call sites (`MonacoAction('id')` vs `MonacoAction(id: 'id')`). Verify freezed supports positional const factory in Phase 1; if not, accept named and adjust call sites.

2. **Keep `MonacoTheme.label` getter?** Three options:
   - Switch-on-id getter, returning `null` for custom themes (recommended)
   - Drop entirely; users build their own mapping
   - Add as a second constructor parameter (`MonacoTheme(id, label)`) — verbose for the common case

3. **Keep `MonacoAction.fromId` / `MonacoTheme.fromId`?** Yes — small helpers (6 lines each) that simplify the common "rebuild from persisted string" pattern. Removing them would push that boilerplate to every caller.

4. **File moves.** Move action/theme files into `lib/src/models/` to match the freezed convention. Public users importing via the barrel are unaffected; anyone importing the private path directly (rare) needs a one-line update.

5. **Deprecation cycle?** Skip. Mechanical 1-line migrations per call site, consistent shape across both surfaces, no half-state to maintain.

## Verification checklist

Before tagging 2.0.0:

- [ ] `MonacoAction.values` contains every action that existed as `static const String` in 1.x.
- [ ] `MonacoTheme.values` contains every built-in enum value from 1.x.
- [ ] Internal `MonacoController` helpers compile against the new types (`format`, `find`, `replace`, `undo`, `redo`, `cut`, `copy`, `paste`, `selectAll`, `toggleWordWrap`).
- [ ] `executeAction(MonacoAction)` dispatches every value in `.values` (test iterates `MonacoAction.values`).
- [ ] `executeAction(const MonacoAction('custom'))` reaches Monaco with the custom id verbatim.
- [ ] `setTheme(MonacoTheme)` works for both built-in and custom themes.
- [ ] `MonacoTheme(id)` round-trips through `EditorOptions.fromJson` for unknown ids.
- [ ] `MonacoAction.fromId('known')` returns the matching value; `'unknown'` returns null.
- [ ] `MonacoTheme.fromId('known')` returns the matching value; `'unknown'` returns null.
- [ ] Dot shorthand compiles: `controller.executeAction(.foldAll)` and `EditorOptions(theme: .vsDark)` both pass analysis.
- [ ] `pubspec.yaml` + `example/pubspec.yaml` SDK constraints bumped to `>=3.10.0`.
- [ ] README Quick Start and migration section show 2.0 idioms.
- [ ] CHANGELOG 2.0.0 has Breaking + Migration sections with the migration table.
- [ ] `flutter analyze` clean; `flutter test` all pass; `dart pub publish --dry-run` reports 0 warnings.

## Long-tail follow-ups (post-2.0, not blocking)

- Audit the remaining 20 unwrapped JS helpers for envelope migration. Commands (`setModel`, `disposeModel`, `createModel`) probably belong in the envelope; intentionally best-effort helpers (`focus`, `layout`, `forceFocus`, `markSaved`) stay raw. Ship as 2.1.x patches with no API change.
- Profile bridge envelope overhead on hot paths. Add a fast-path bypass only if measurements justify it.
- Optional: typed wrapper for `executeAction` `args` payload instead of `Object?`. Most actions take none; a few take a typed shape that could be modeled.
