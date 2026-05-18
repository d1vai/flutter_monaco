import 'package:flutter/material.dart';

/// Visual configuration for MonacoEditor's built-in loading, error, and
/// status-bar chrome.
@immutable
class MonacoEditorThemeData {
  /// Creates theme overrides for MonacoEditor's built-in loading, error, and
  /// status-bar chrome.
  const MonacoEditorThemeData({
    /// Color of the default loading spinner.
    this.loadingIndicatorColor,

    /// Optional background behind the default loading overlay.
    this.loadingBackgroundColor,

    /// Color of the default error icon.
    this.errorIconColor,

    /// Text style of the default error title.
    this.errorTitleStyle,

    /// Text style of the default error message.
    this.errorMessageStyle,

    /// Optional background behind the default error overlay.
    this.errorBackgroundColor,

    /// Button style used by the default retry button.
    this.retryButtonStyle,

    /// Background color of the built-in status bar.
    this.statusBarBackgroundColor,

    /// Top border color of the built-in status bar.
    this.statusBarBorderColor,

    /// Text style of the built-in status bar entries.
    this.statusBarTextStyle,

    /// Horizontal spacing between built-in status bar entries.
    this.statusBarSpacing = 16,

    /// Padding of the built-in status bar container.
    this.statusBarPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
  });

  /// Color of the default loading spinner.
  final Color? loadingIndicatorColor;

  /// Optional background behind the default loading overlay.
  final Color? loadingBackgroundColor;

  /// Color of the default error icon.
  final Color? errorIconColor;

  /// Text style of the default error title.
  final TextStyle? errorTitleStyle;

  /// Text style of the default error message.
  final TextStyle? errorMessageStyle;

  /// Optional background behind the default error overlay.
  final Color? errorBackgroundColor;

  /// Button style used by the default retry button.
  final ButtonStyle? retryButtonStyle;

  /// Background color of the built-in status bar.
  final Color? statusBarBackgroundColor;

  /// Top border color of the built-in status bar.
  final Color? statusBarBorderColor;

  /// Text style of the built-in status bar entries.
  final TextStyle? statusBarTextStyle;

  /// Horizontal spacing between built-in status bar entries.
  final double statusBarSpacing;

  /// Padding of the built-in status bar container.
  final EdgeInsetsGeometry statusBarPadding;

  /// Returns a copy with selective overrides.
  MonacoEditorThemeData copyWith({
    Color? loadingIndicatorColor,
    Color? loadingBackgroundColor,
    Color? errorIconColor,
    TextStyle? errorTitleStyle,
    TextStyle? errorMessageStyle,
    Color? errorBackgroundColor,
    ButtonStyle? retryButtonStyle,
    Color? statusBarBackgroundColor,
    Color? statusBarBorderColor,
    TextStyle? statusBarTextStyle,
    double? statusBarSpacing,
    EdgeInsetsGeometry? statusBarPadding,
  }) {
    return MonacoEditorThemeData(
      loadingIndicatorColor:
          loadingIndicatorColor ?? this.loadingIndicatorColor,
      loadingBackgroundColor:
          loadingBackgroundColor ?? this.loadingBackgroundColor,
      errorIconColor: errorIconColor ?? this.errorIconColor,
      errorTitleStyle: errorTitleStyle ?? this.errorTitleStyle,
      errorMessageStyle: errorMessageStyle ?? this.errorMessageStyle,
      errorBackgroundColor: errorBackgroundColor ?? this.errorBackgroundColor,
      retryButtonStyle: retryButtonStyle ?? this.retryButtonStyle,
      statusBarBackgroundColor:
          statusBarBackgroundColor ?? this.statusBarBackgroundColor,
      statusBarBorderColor: statusBarBorderColor ?? this.statusBarBorderColor,
      statusBarTextStyle: statusBarTextStyle ?? this.statusBarTextStyle,
      statusBarSpacing: statusBarSpacing ?? this.statusBarSpacing,
      statusBarPadding: statusBarPadding ?? this.statusBarPadding,
    );
  }

  /// Resolves a sensible fallback theme from the current Material theme.
  static MonacoEditorThemeData fallback(BuildContext context) {
    final theme = Theme.of(context);
    return MonacoEditorThemeData(
      loadingIndicatorColor: theme.colorScheme.primary,
      errorIconColor: theme.colorScheme.error,
      errorTitleStyle: theme.textTheme.titleMedium,
      errorMessageStyle: theme.textTheme.bodyMedium?.copyWith(
        color: theme.colorScheme.error,
      ),
      errorBackgroundColor: theme.colorScheme.surface,
      retryButtonStyle: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
      ),
      statusBarBackgroundColor:
          theme.colorScheme.surface.withValues(alpha: 0.95),
      statusBarBorderColor: theme.dividerColor,
      statusBarTextStyle:
          theme.textTheme.bodySmall ?? const TextStyle(fontSize: 12),
    );
  }
}
