import 'package:flutter_monaco/src/core/monaco_actions.dart';
import 'package:flutter_monaco/src/core/monaco_controller.dart';

/// Convenience editor-action helpers commonly wired into app toolbars.
///
/// These are intentionally extension methods rather than core
/// [MonacoController] members so the controller surface stays focused on
/// editor lifecycle and bridge primitives. Adding new shortcuts here costs
/// nothing - each call is a one-line wrapper over
/// [MonacoController.executeAction] with a typed [MonacoAction] id.
///
/// Import them via the public barrel:
///
/// ```dart
/// import 'package:flutter_monaco/flutter_monaco.dart';
///
/// await controller.foldAll();
/// await controller.toggleLineComment();
/// ```
///
/// For actions not exposed here, call [MonacoController.executeAction]
/// directly with a [MonacoAction] constant or a raw command id.
extension MonacoControllerMigrationActions on MonacoController {
  /// Folds every foldable region in the current model.
  Future<void> foldAll() => executeAction(MonacoAction.foldAll);

  /// Expands every previously folded region in the current model.
  Future<void> unfoldAll() => executeAction(MonacoAction.unfoldAll);

  /// Toggles line comments on the current selection or active line.
  Future<void> toggleLineComment() => executeAction(MonacoAction.commentLine);

  /// Indents the current selection or active line.
  Future<void> indentLines() => executeAction(MonacoAction.indentLines);

  /// Outdents the current selection or active line.
  Future<void> outdentLines() => executeAction(MonacoAction.outdentLines);
}
