/// Exception thrown when a typed Monaco JavaScript bridge call fails.
///
/// Raised by [MonacoController] command methods when the JavaScript side
/// reports an error envelope (`ok: false`). Read methods with documented
/// fallbacks catch this internally and return their default value instead.
///
/// Inspect [operation] to know which bridge method failed and [message] for
/// the JavaScript-side error description. [stack] is included when the
/// underlying platform provides it.
class MonacoJavaScriptException implements Exception {
  /// Creates a JavaScript bridge exception.
  const MonacoJavaScriptException({
    required this.message,
    this.operation,
    this.name,
    this.stack,
    this.details,
  });

  /// Builds an exception from the bridge error envelope payload.
  ///
  /// The shape matches what the JavaScript dispatcher produces on `ok: false`:
  /// `{name, message, stack}`. Missing fields fall back to safe defaults.
  factory MonacoJavaScriptException.fromJson(
    Map<String, dynamic> json, {
    String? operation,
  }) {
    return MonacoJavaScriptException(
      operation: operation,
      name: json['name']?.toString(),
      message: json['message']?.toString() ?? 'Unknown JavaScript bridge error',
      stack: json['stack']?.toString(),
      details: json,
    );
  }

  /// Human-readable error message from JavaScript or the bridge layer.
  final String message;

  /// Bridge operation name that failed (e.g. `'setLanguage'`), when known.
  final String? operation;

  /// JavaScript error name (e.g. `'Error'`, `'TypeError'`), when available.
  final String? name;

  /// JavaScript stack trace, when the platform provides one.
  final String? stack;

  /// Raw decoded error envelope fields, for callers that need extra context.
  final Object? details;

  @override
  String toString() {
    final buffer = StringBuffer('MonacoJavaScriptException');
    if (operation != null) {
      buffer.write('($operation)');
    }
    buffer.write(': ');
    if (name != null && name!.isNotEmpty && name != 'Error') {
      buffer.write('$name: ');
    }
    buffer.write(message);
    return buffer.toString();
  }
}
