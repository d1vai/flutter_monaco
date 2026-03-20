// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monaco_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Position {
  /// The 1-based line number.
  int get line;

  /// The 1-based column number.
  int get column;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PositionCopyWith<Position> get copyWith =>
      _$PositionCopyWithImpl<Position>(this as Position, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Position &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, line, column);

  @override
  String toString() {
    return 'Position(line: $line, column: $column)';
  }
}

/// @nodoc
abstract mixin class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) _then) =
      _$PositionCopyWithImpl;
  @useResult
  $Res call({int line, int column});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._self, this._then);

  final Position _self;
  final $Res Function(Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? column = null,
  }) {
    return _then(_self.copyWith(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Position].
extension PositionPatterns on Position {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Position value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Position value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Position value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int line, int column)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that.line, _that.column);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int line, int column) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position():
        return $default(_that.line, _that.column);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int line, int column)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that.line, _that.column);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Position extends Position {
  const _Position({required this.line, required this.column}) : super._();

  /// The 1-based line number.
  @override
  final int line;

  /// The 1-based column number.
  @override
  final int column;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Position &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, line, column);

  @override
  String toString() {
    return 'Position(line: $line, column: $column)';
  }
}

/// @nodoc
abstract mixin class _$PositionCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) _then) =
      __$PositionCopyWithImpl;
  @override
  @useResult
  $Res call({int line, int column});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(this._self, this._then);

  final _Position _self;
  final $Res Function(_Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? line = null,
    Object? column = null,
  }) {
    return _then(_Position(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Range {
  /// The 1-based line number where the range starts.
  int get startLine;

  /// The 1-based column number where the range starts.
  int get startColumn;

  /// The 1-based line number where the range ends.
  int get endLine;

  /// The 1-based column number where the range ends.
  int get endColumn;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RangeCopyWith<Range> get copyWith =>
      _$RangeCopyWithImpl<Range>(this as Range, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Range &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startLine, startColumn, endLine, endColumn);

  @override
  String toString() {
    return 'Range(startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn)';
  }
}

/// @nodoc
abstract mixin class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) _then) =
      _$RangeCopyWithImpl;
  @useResult
  $Res call({int startLine, int startColumn, int endLine, int endColumn});
}

/// @nodoc
class _$RangeCopyWithImpl<$Res> implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._self, this._then);

  final Range _self;
  final $Res Function(Range) _then;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLine = null,
    Object? startColumn = null,
    Object? endLine = null,
    Object? endColumn = null,
  }) {
    return _then(_self.copyWith(
      startLine: null == startLine
          ? _self.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: null == startColumn
          ? _self.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: null == endLine
          ? _self.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: null == endColumn
          ? _self.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Range].
extension RangePatterns on Range {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Range value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Range value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Range value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int startLine, int startColumn, int endLine, int endColumn)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int startLine, int startColumn, int endLine, int endColumn)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range():
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int startLine, int startColumn, int endLine, int endColumn)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Range extends Range {
  const _Range(
      {required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn})
      : super._();

  /// The 1-based line number where the range starts.
  @override
  final int startLine;

  /// The 1-based column number where the range starts.
  @override
  final int startColumn;

  /// The 1-based line number where the range ends.
  @override
  final int endLine;

  /// The 1-based column number where the range ends.
  @override
  final int endColumn;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RangeCopyWith<_Range> get copyWith =>
      __$RangeCopyWithImpl<_Range>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Range &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startLine, startColumn, endLine, endColumn);

  @override
  String toString() {
    return 'Range(startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn)';
  }
}

/// @nodoc
abstract mixin class _$RangeCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$RangeCopyWith(_Range value, $Res Function(_Range) _then) =
      __$RangeCopyWithImpl;
  @override
  @useResult
  $Res call({int startLine, int startColumn, int endLine, int endColumn});
}

/// @nodoc
class __$RangeCopyWithImpl<$Res> implements _$RangeCopyWith<$Res> {
  __$RangeCopyWithImpl(this._self, this._then);

  final _Range _self;
  final $Res Function(_Range) _then;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startLine = null,
    Object? startColumn = null,
    Object? endLine = null,
    Object? endColumn = null,
  }) {
    return _then(_Range(
      startLine: null == startLine
          ? _self.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: null == startColumn
          ? _self.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: null == endLine
          ? _self.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: null == endColumn
          ? _self.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MarkerData {
  /// The range in the document where the marker should be displayed.
  Range get range;

  /// The message to display when hovering over the marker.
  String get message;

  /// The severity level of the marker.
  MarkerSeverity get severity;

  /// An optional error code.
  String? get code;

  /// The source of the marker (e.g., 'linter').
  String? get source;

  /// Optional tags, such as `unnecessary` or `deprecated`.
  List<String>? get tags;

  /// Optional related information, providing links to other locations.
  List<RelatedInformation>? get relatedInformation;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkerDataCopyWith<MarkerData> get copyWith =>
      _$MarkerDataCopyWithImpl<MarkerData>(this as MarkerData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkerData &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.relatedInformation, relatedInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      range,
      message,
      severity,
      code,
      source,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(relatedInformation));

  @override
  String toString() {
    return 'MarkerData(range: $range, message: $message, severity: $severity, code: $code, source: $source, tags: $tags, relatedInformation: $relatedInformation)';
  }
}

/// @nodoc
abstract mixin class $MarkerDataCopyWith<$Res> {
  factory $MarkerDataCopyWith(
          MarkerData value, $Res Function(MarkerData) _then) =
      _$MarkerDataCopyWithImpl;
  @useResult
  $Res call(
      {Range range,
      String message,
      MarkerSeverity severity,
      String? code,
      String? source,
      List<String>? tags,
      List<RelatedInformation>? relatedInformation});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$MarkerDataCopyWithImpl<$Res> implements $MarkerDataCopyWith<$Res> {
  _$MarkerDataCopyWithImpl(this._self, this._then);

  final MarkerData _self;
  final $Res Function(MarkerData) _then;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? message = null,
    Object? severity = null,
    Object? code = freezed,
    Object? source = freezed,
    Object? tags = freezed,
    Object? relatedInformation = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as MarkerSeverity,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relatedInformation: freezed == relatedInformation
          ? _self.relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as List<RelatedInformation>?,
    ));
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MarkerData].
extension MarkerDataPatterns on MarkerData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MarkerData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MarkerData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MarkerData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData():
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MarkerData extends MarkerData {
  const _MarkerData(
      {required this.range,
      required this.message,
      this.severity = MarkerSeverity.info,
      this.code,
      this.source,
      final List<String>? tags,
      final List<RelatedInformation>? relatedInformation})
      : _tags = tags,
        _relatedInformation = relatedInformation,
        super._();

  /// The range in the document where the marker should be displayed.
  @override
  final Range range;

  /// The message to display when hovering over the marker.
  @override
  final String message;

  /// The severity level of the marker.
  @override
  @JsonKey()
  final MarkerSeverity severity;

  /// An optional error code.
  @override
  final String? code;

  /// The source of the marker (e.g., 'linter').
  @override
  final String? source;

  /// Optional tags, such as `unnecessary` or `deprecated`.
  final List<String>? _tags;

  /// Optional tags, such as `unnecessary` or `deprecated`.
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional related information, providing links to other locations.
  final List<RelatedInformation>? _relatedInformation;

  /// Optional related information, providing links to other locations.
  @override
  List<RelatedInformation>? get relatedInformation {
    final value = _relatedInformation;
    if (value == null) return null;
    if (_relatedInformation is EqualUnmodifiableListView)
      return _relatedInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkerDataCopyWith<_MarkerData> get copyWith =>
      __$MarkerDataCopyWithImpl<_MarkerData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkerData &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._relatedInformation, _relatedInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      range,
      message,
      severity,
      code,
      source,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_relatedInformation));

  @override
  String toString() {
    return 'MarkerData(range: $range, message: $message, severity: $severity, code: $code, source: $source, tags: $tags, relatedInformation: $relatedInformation)';
  }
}

/// @nodoc
abstract mixin class _$MarkerDataCopyWith<$Res>
    implements $MarkerDataCopyWith<$Res> {
  factory _$MarkerDataCopyWith(
          _MarkerData value, $Res Function(_MarkerData) _then) =
      __$MarkerDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Range range,
      String message,
      MarkerSeverity severity,
      String? code,
      String? source,
      List<String>? tags,
      List<RelatedInformation>? relatedInformation});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$MarkerDataCopyWithImpl<$Res> implements _$MarkerDataCopyWith<$Res> {
  __$MarkerDataCopyWithImpl(this._self, this._then);

  final _MarkerData _self;
  final $Res Function(_MarkerData) _then;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? message = null,
    Object? severity = null,
    Object? code = freezed,
    Object? source = freezed,
    Object? tags = freezed,
    Object? relatedInformation = freezed,
  }) {
    return _then(_MarkerData(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as MarkerSeverity,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relatedInformation: freezed == relatedInformation
          ? _self._relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as List<RelatedInformation>?,
    ));
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$RelatedInformation {
  /// The URI of the resource to link to.
  Uri get resource;

  /// The range within the resource to highlight.
  Range get range;

  /// The message to display for this piece of information.
  String get message;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelatedInformationCopyWith<RelatedInformation> get copyWith =>
      _$RelatedInformationCopyWithImpl<RelatedInformation>(
          this as RelatedInformation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelatedInformation &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource, range, message);

  @override
  String toString() {
    return 'RelatedInformation(resource: $resource, range: $range, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RelatedInformationCopyWith<$Res> {
  factory $RelatedInformationCopyWith(
          RelatedInformation value, $Res Function(RelatedInformation) _then) =
      _$RelatedInformationCopyWithImpl;
  @useResult
  $Res call({Uri resource, Range range, String message});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$RelatedInformationCopyWithImpl<$Res>
    implements $RelatedInformationCopyWith<$Res> {
  _$RelatedInformationCopyWithImpl(this._self, this._then);

  final RelatedInformation _self;
  final $Res Function(RelatedInformation) _then;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? range = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      resource: null == resource
          ? _self.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Uri,
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RelatedInformation].
extension RelatedInformationPatterns on RelatedInformation {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RelatedInformation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RelatedInformation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RelatedInformation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Uri resource, Range range, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that.resource, _that.range, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Uri resource, Range range, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation():
        return $default(_that.resource, _that.range, _that.message);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Uri resource, Range range, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that.resource, _that.range, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RelatedInformation extends RelatedInformation {
  const _RelatedInformation(
      {required this.resource, required this.range, required this.message})
      : super._();

  /// The URI of the resource to link to.
  @override
  final Uri resource;

  /// The range within the resource to highlight.
  @override
  final Range range;

  /// The message to display for this piece of information.
  @override
  final String message;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelatedInformationCopyWith<_RelatedInformation> get copyWith =>
      __$RelatedInformationCopyWithImpl<_RelatedInformation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelatedInformation &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource, range, message);

  @override
  String toString() {
    return 'RelatedInformation(resource: $resource, range: $range, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$RelatedInformationCopyWith<$Res>
    implements $RelatedInformationCopyWith<$Res> {
  factory _$RelatedInformationCopyWith(
          _RelatedInformation value, $Res Function(_RelatedInformation) _then) =
      __$RelatedInformationCopyWithImpl;
  @override
  @useResult
  $Res call({Uri resource, Range range, String message});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$RelatedInformationCopyWithImpl<$Res>
    implements _$RelatedInformationCopyWith<$Res> {
  __$RelatedInformationCopyWithImpl(this._self, this._then);

  final _RelatedInformation _self;
  final $Res Function(_RelatedInformation) _then;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resource = null,
    Object? range = null,
    Object? message = null,
  }) {
    return _then(_RelatedInformation(
      resource: null == resource
          ? _self.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Uri,
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$DecorationOptions {
  /// The range to which the decoration should be applied.
  Range get range;

  /// A map of Monaco-specific decoration options.
  Map<String, dynamic> get options;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecorationOptionsCopyWith<DecorationOptions> get copyWith =>
      _$DecorationOptionsCopyWithImpl<DecorationOptions>(
          this as DecorationOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecorationOptions &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, const DeepCollectionEquality().hash(options));

  @override
  String toString() {
    return 'DecorationOptions(range: $range, options: $options)';
  }
}

/// @nodoc
abstract mixin class $DecorationOptionsCopyWith<$Res> {
  factory $DecorationOptionsCopyWith(
          DecorationOptions value, $Res Function(DecorationOptions) _then) =
      _$DecorationOptionsCopyWithImpl;
  @useResult
  $Res call({Range range, Map<String, dynamic> options});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$DecorationOptionsCopyWithImpl<$Res>
    implements $DecorationOptionsCopyWith<$Res> {
  _$DecorationOptionsCopyWithImpl(this._self, this._then);

  final DecorationOptions _self;
  final $Res Function(DecorationOptions) _then;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? options = null,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DecorationOptions].
extension DecorationOptionsPatterns on DecorationOptions {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DecorationOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DecorationOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DecorationOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Range range, Map<String, dynamic> options)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that.range, _that.options);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Range range, Map<String, dynamic> options) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions():
        return $default(_that.range, _that.options);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Range range, Map<String, dynamic> options)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that.range, _that.options);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DecorationOptions extends DecorationOptions {
  const _DecorationOptions(
      {required this.range, final Map<String, dynamic> options = const {}})
      : _options = options,
        super._();

  /// The range to which the decoration should be applied.
  @override
  final Range range;

  /// A map of Monaco-specific decoration options.
  final Map<String, dynamic> _options;

  /// A map of Monaco-specific decoration options.
  @override
  @JsonKey()
  Map<String, dynamic> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecorationOptionsCopyWith<_DecorationOptions> get copyWith =>
      __$DecorationOptionsCopyWithImpl<_DecorationOptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecorationOptions &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, const DeepCollectionEquality().hash(_options));

  @override
  String toString() {
    return 'DecorationOptions(range: $range, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$DecorationOptionsCopyWith<$Res>
    implements $DecorationOptionsCopyWith<$Res> {
  factory _$DecorationOptionsCopyWith(
          _DecorationOptions value, $Res Function(_DecorationOptions) _then) =
      __$DecorationOptionsCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, Map<String, dynamic> options});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$DecorationOptionsCopyWithImpl<$Res>
    implements _$DecorationOptionsCopyWith<$Res> {
  __$DecorationOptionsCopyWithImpl(this._self, this._then);

  final _DecorationOptions _self;
  final $Res Function(_DecorationOptions) _then;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? options = null,
  }) {
    return _then(_DecorationOptions(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$EditOperation {
  /// The range of text to be replaced.
  Range get range;

  /// The new text to insert. An empty string results in a deletion.
  String get text;

  /// If `true`, forces markers to move with the text.
  bool? get forceMoveMarkers;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditOperationCopyWith<EditOperation> get copyWith =>
      _$EditOperationCopyWithImpl<EditOperation>(
          this as EditOperation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditOperation &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.forceMoveMarkers, forceMoveMarkers) ||
                other.forceMoveMarkers == forceMoveMarkers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, text, forceMoveMarkers);

  @override
  String toString() {
    return 'EditOperation(range: $range, text: $text, forceMoveMarkers: $forceMoveMarkers)';
  }
}

/// @nodoc
abstract mixin class $EditOperationCopyWith<$Res> {
  factory $EditOperationCopyWith(
          EditOperation value, $Res Function(EditOperation) _then) =
      _$EditOperationCopyWithImpl;
  @useResult
  $Res call({Range range, String text, bool? forceMoveMarkers});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$EditOperationCopyWithImpl<$Res>
    implements $EditOperationCopyWith<$Res> {
  _$EditOperationCopyWithImpl(this._self, this._then);

  final EditOperation _self;
  final $Res Function(EditOperation) _then;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? text = null,
    Object? forceMoveMarkers = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      forceMoveMarkers: freezed == forceMoveMarkers
          ? _self.forceMoveMarkers
          : forceMoveMarkers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EditOperation].
extension EditOperationPatterns on EditOperation {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditOperation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditOperation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditOperation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Range range, String text, bool? forceMoveMarkers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Range range, String text, bool? forceMoveMarkers) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation():
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Range range, String text, bool? forceMoveMarkers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EditOperation extends EditOperation {
  const _EditOperation(
      {required this.range, required this.text, this.forceMoveMarkers})
      : super._();

  /// The range of text to be replaced.
  @override
  final Range range;

  /// The new text to insert. An empty string results in a deletion.
  @override
  final String text;

  /// If `true`, forces markers to move with the text.
  @override
  final bool? forceMoveMarkers;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditOperationCopyWith<_EditOperation> get copyWith =>
      __$EditOperationCopyWithImpl<_EditOperation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditOperation &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.forceMoveMarkers, forceMoveMarkers) ||
                other.forceMoveMarkers == forceMoveMarkers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, text, forceMoveMarkers);

  @override
  String toString() {
    return 'EditOperation(range: $range, text: $text, forceMoveMarkers: $forceMoveMarkers)';
  }
}

/// @nodoc
abstract mixin class _$EditOperationCopyWith<$Res>
    implements $EditOperationCopyWith<$Res> {
  factory _$EditOperationCopyWith(
          _EditOperation value, $Res Function(_EditOperation) _then) =
      __$EditOperationCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, String text, bool? forceMoveMarkers});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$EditOperationCopyWithImpl<$Res>
    implements _$EditOperationCopyWith<$Res> {
  __$EditOperationCopyWithImpl(this._self, this._then);

  final _EditOperation _self;
  final $Res Function(_EditOperation) _then;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? text = null,
    Object? forceMoveMarkers = freezed,
  }) {
    return _then(_EditOperation(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      forceMoveMarkers: freezed == forceMoveMarkers
          ? _self.forceMoveMarkers
          : forceMoveMarkers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$CompletionItem {
  /// The label of this completion item.
  String get label;

  /// The text to be inserted into the document. If `null`, [label] is used.
  String? get insertText;

  /// The kind of this completion item (e.g., method, function).
  CompletionItemKind? get kind;

  /// A human-readable string with additional information about this item.
  String? get detail;

  /// A human-readable string that represents a doc-comment.
  String? get documentation;

  /// A string that should be used when comparing this item with other items.
  String? get sortText;

  /// A string that should be used when filtering a set of completion items.
  String? get filterText;

  /// The range of text to be replaced by this completion item.
  Range? get range;

  /// Characters that trigger the commit of this completion.
  List<String>? get commitCharacters;

  /// Rules that control how the [insertText] is formatted.
  Set<InsertTextRule>? get insertTextRules;

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompletionItemCopyWith<CompletionItem> get copyWith =>
      _$CompletionItemCopyWithImpl<CompletionItem>(
          this as CompletionItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompletionItem &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.insertText, insertText) ||
                other.insertText == insertText) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.sortText, sortText) ||
                other.sortText == sortText) &&
            (identical(other.filterText, filterText) ||
                other.filterText == filterText) &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality()
                .equals(other.commitCharacters, commitCharacters) &&
            const DeepCollectionEquality()
                .equals(other.insertTextRules, insertTextRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      insertText,
      kind,
      detail,
      documentation,
      sortText,
      filterText,
      range,
      const DeepCollectionEquality().hash(commitCharacters),
      const DeepCollectionEquality().hash(insertTextRules));

  @override
  String toString() {
    return 'CompletionItem(label: $label, insertText: $insertText, kind: $kind, detail: $detail, documentation: $documentation, sortText: $sortText, filterText: $filterText, range: $range, commitCharacters: $commitCharacters, insertTextRules: $insertTextRules)';
  }
}

/// @nodoc
abstract mixin class $CompletionItemCopyWith<$Res> {
  factory $CompletionItemCopyWith(
          CompletionItem value, $Res Function(CompletionItem) _then) =
      _$CompletionItemCopyWithImpl;
  @useResult
  $Res call(
      {String label,
      String? insertText,
      CompletionItemKind? kind,
      String? detail,
      String? documentation,
      String? sortText,
      String? filterText,
      Range? range,
      List<String>? commitCharacters,
      Set<InsertTextRule>? insertTextRules});

  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$CompletionItemCopyWithImpl<$Res>
    implements $CompletionItemCopyWith<$Res> {
  _$CompletionItemCopyWithImpl(this._self, this._then);

  final CompletionItem _self;
  final $Res Function(CompletionItem) _then;

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? insertText = freezed,
    Object? kind = freezed,
    Object? detail = freezed,
    Object? documentation = freezed,
    Object? sortText = freezed,
    Object? filterText = freezed,
    Object? range = freezed,
    Object? commitCharacters = freezed,
    Object? insertTextRules = freezed,
  }) {
    return _then(_self.copyWith(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      insertText: freezed == insertText
          ? _self.insertText
          : insertText // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CompletionItemKind?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _self.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      sortText: freezed == sortText
          ? _self.sortText
          : sortText // ignore: cast_nullable_to_non_nullable
              as String?,
      filterText: freezed == filterText
          ? _self.filterText
          : filterText // ignore: cast_nullable_to_non_nullable
              as String?,
      range: freezed == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      commitCharacters: freezed == commitCharacters
          ? _self.commitCharacters
          : commitCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      insertTextRules: freezed == insertTextRules
          ? _self.insertTextRules
          : insertTextRules // ignore: cast_nullable_to_non_nullable
              as Set<InsertTextRule>?,
    ));
  }

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_self.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.range!, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CompletionItem].
extension CompletionItemPatterns on CompletionItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CompletionItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CompletionItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionItem():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CompletionItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String label,
            String? insertText,
            CompletionItemKind? kind,
            String? detail,
            String? documentation,
            String? sortText,
            String? filterText,
            Range? range,
            List<String>? commitCharacters,
            Set<InsertTextRule>? insertTextRules)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionItem() when $default != null:
        return $default(
            _that.label,
            _that.insertText,
            _that.kind,
            _that.detail,
            _that.documentation,
            _that.sortText,
            _that.filterText,
            _that.range,
            _that.commitCharacters,
            _that.insertTextRules);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String label,
            String? insertText,
            CompletionItemKind? kind,
            String? detail,
            String? documentation,
            String? sortText,
            String? filterText,
            Range? range,
            List<String>? commitCharacters,
            Set<InsertTextRule>? insertTextRules)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionItem():
        return $default(
            _that.label,
            _that.insertText,
            _that.kind,
            _that.detail,
            _that.documentation,
            _that.sortText,
            _that.filterText,
            _that.range,
            _that.commitCharacters,
            _that.insertTextRules);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String label,
            String? insertText,
            CompletionItemKind? kind,
            String? detail,
            String? documentation,
            String? sortText,
            String? filterText,
            Range? range,
            List<String>? commitCharacters,
            Set<InsertTextRule>? insertTextRules)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionItem() when $default != null:
        return $default(
            _that.label,
            _that.insertText,
            _that.kind,
            _that.detail,
            _that.documentation,
            _that.sortText,
            _that.filterText,
            _that.range,
            _that.commitCharacters,
            _that.insertTextRules);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CompletionItem extends CompletionItem {
  const _CompletionItem(
      {required this.label,
      this.insertText,
      this.kind,
      this.detail,
      this.documentation,
      this.sortText,
      this.filterText,
      this.range,
      final List<String>? commitCharacters,
      final Set<InsertTextRule>? insertTextRules})
      : _commitCharacters = commitCharacters,
        _insertTextRules = insertTextRules,
        super._();

  /// The label of this completion item.
  @override
  final String label;

  /// The text to be inserted into the document. If `null`, [label] is used.
  @override
  final String? insertText;

  /// The kind of this completion item (e.g., method, function).
  @override
  final CompletionItemKind? kind;

  /// A human-readable string with additional information about this item.
  @override
  final String? detail;

  /// A human-readable string that represents a doc-comment.
  @override
  final String? documentation;

  /// A string that should be used when comparing this item with other items.
  @override
  final String? sortText;

  /// A string that should be used when filtering a set of completion items.
  @override
  final String? filterText;

  /// The range of text to be replaced by this completion item.
  @override
  final Range? range;

  /// Characters that trigger the commit of this completion.
  final List<String>? _commitCharacters;

  /// Characters that trigger the commit of this completion.
  @override
  List<String>? get commitCharacters {
    final value = _commitCharacters;
    if (value == null) return null;
    if (_commitCharacters is EqualUnmodifiableListView)
      return _commitCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Rules that control how the [insertText] is formatted.
  final Set<InsertTextRule>? _insertTextRules;

  /// Rules that control how the [insertText] is formatted.
  @override
  Set<InsertTextRule>? get insertTextRules {
    final value = _insertTextRules;
    if (value == null) return null;
    if (_insertTextRules is EqualUnmodifiableSetView) return _insertTextRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompletionItemCopyWith<_CompletionItem> get copyWith =>
      __$CompletionItemCopyWithImpl<_CompletionItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletionItem &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.insertText, insertText) ||
                other.insertText == insertText) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.sortText, sortText) ||
                other.sortText == sortText) &&
            (identical(other.filterText, filterText) ||
                other.filterText == filterText) &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality()
                .equals(other._commitCharacters, _commitCharacters) &&
            const DeepCollectionEquality()
                .equals(other._insertTextRules, _insertTextRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      insertText,
      kind,
      detail,
      documentation,
      sortText,
      filterText,
      range,
      const DeepCollectionEquality().hash(_commitCharacters),
      const DeepCollectionEquality().hash(_insertTextRules));

  @override
  String toString() {
    return 'CompletionItem(label: $label, insertText: $insertText, kind: $kind, detail: $detail, documentation: $documentation, sortText: $sortText, filterText: $filterText, range: $range, commitCharacters: $commitCharacters, insertTextRules: $insertTextRules)';
  }
}

/// @nodoc
abstract mixin class _$CompletionItemCopyWith<$Res>
    implements $CompletionItemCopyWith<$Res> {
  factory _$CompletionItemCopyWith(
          _CompletionItem value, $Res Function(_CompletionItem) _then) =
      __$CompletionItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String label,
      String? insertText,
      CompletionItemKind? kind,
      String? detail,
      String? documentation,
      String? sortText,
      String? filterText,
      Range? range,
      List<String>? commitCharacters,
      Set<InsertTextRule>? insertTextRules});

  @override
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$CompletionItemCopyWithImpl<$Res>
    implements _$CompletionItemCopyWith<$Res> {
  __$CompletionItemCopyWithImpl(this._self, this._then);

  final _CompletionItem _self;
  final $Res Function(_CompletionItem) _then;

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? insertText = freezed,
    Object? kind = freezed,
    Object? detail = freezed,
    Object? documentation = freezed,
    Object? sortText = freezed,
    Object? filterText = freezed,
    Object? range = freezed,
    Object? commitCharacters = freezed,
    Object? insertTextRules = freezed,
  }) {
    return _then(_CompletionItem(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      insertText: freezed == insertText
          ? _self.insertText
          : insertText // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CompletionItemKind?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _self.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      sortText: freezed == sortText
          ? _self.sortText
          : sortText // ignore: cast_nullable_to_non_nullable
              as String?,
      filterText: freezed == filterText
          ? _self.filterText
          : filterText // ignore: cast_nullable_to_non_nullable
              as String?,
      range: freezed == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      commitCharacters: freezed == commitCharacters
          ? _self._commitCharacters
          : commitCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      insertTextRules: freezed == insertTextRules
          ? _self._insertTextRules
          : insertTextRules // ignore: cast_nullable_to_non_nullable
              as Set<InsertTextRule>?,
    ));
  }

  /// Create a copy of CompletionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_self.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.range!, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$CompletionList {
  /// The list of completion suggestions.
  List<CompletionItem> get suggestions;

  /// If `true`, indicates that this is not the full list of suggestions.
  bool get isIncomplete;

  /// Create a copy of CompletionList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompletionListCopyWith<CompletionList> get copyWith =>
      _$CompletionListCopyWithImpl<CompletionList>(
          this as CompletionList, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompletionList &&
            const DeepCollectionEquality()
                .equals(other.suggestions, suggestions) &&
            (identical(other.isIncomplete, isIncomplete) ||
                other.isIncomplete == isIncomplete));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(suggestions), isIncomplete);

  @override
  String toString() {
    return 'CompletionList(suggestions: $suggestions, isIncomplete: $isIncomplete)';
  }
}

/// @nodoc
abstract mixin class $CompletionListCopyWith<$Res> {
  factory $CompletionListCopyWith(
          CompletionList value, $Res Function(CompletionList) _then) =
      _$CompletionListCopyWithImpl;
  @useResult
  $Res call({List<CompletionItem> suggestions, bool isIncomplete});
}

/// @nodoc
class _$CompletionListCopyWithImpl<$Res>
    implements $CompletionListCopyWith<$Res> {
  _$CompletionListCopyWithImpl(this._self, this._then);

  final CompletionList _self;
  final $Res Function(CompletionList) _then;

  /// Create a copy of CompletionList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? isIncomplete = null,
  }) {
    return _then(_self.copyWith(
      suggestions: null == suggestions
          ? _self.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<CompletionItem>,
      isIncomplete: null == isIncomplete
          ? _self.isIncomplete
          : isIncomplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CompletionList].
extension CompletionListPatterns on CompletionList {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CompletionList value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionList() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CompletionList value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionList():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CompletionList value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionList() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CompletionItem> suggestions, bool isIncomplete)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionList() when $default != null:
        return $default(_that.suggestions, _that.isIncomplete);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CompletionItem> suggestions, bool isIncomplete)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionList():
        return $default(_that.suggestions, _that.isIncomplete);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<CompletionItem> suggestions, bool isIncomplete)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionList() when $default != null:
        return $default(_that.suggestions, _that.isIncomplete);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CompletionList extends CompletionList {
  const _CompletionList(
      {required final List<CompletionItem> suggestions,
      this.isIncomplete = false})
      : _suggestions = suggestions,
        super._();

  /// The list of completion suggestions.
  final List<CompletionItem> _suggestions;

  /// The list of completion suggestions.
  @override
  List<CompletionItem> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  /// If `true`, indicates that this is not the full list of suggestions.
  @override
  @JsonKey()
  final bool isIncomplete;

  /// Create a copy of CompletionList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompletionListCopyWith<_CompletionList> get copyWith =>
      __$CompletionListCopyWithImpl<_CompletionList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletionList &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.isIncomplete, isIncomplete) ||
                other.isIncomplete == isIncomplete));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_suggestions), isIncomplete);

  @override
  String toString() {
    return 'CompletionList(suggestions: $suggestions, isIncomplete: $isIncomplete)';
  }
}

/// @nodoc
abstract mixin class _$CompletionListCopyWith<$Res>
    implements $CompletionListCopyWith<$Res> {
  factory _$CompletionListCopyWith(
          _CompletionList value, $Res Function(_CompletionList) _then) =
      __$CompletionListCopyWithImpl;
  @override
  @useResult
  $Res call({List<CompletionItem> suggestions, bool isIncomplete});
}

/// @nodoc
class __$CompletionListCopyWithImpl<$Res>
    implements _$CompletionListCopyWith<$Res> {
  __$CompletionListCopyWithImpl(this._self, this._then);

  final _CompletionList _self;
  final $Res Function(_CompletionList) _then;

  /// Create a copy of CompletionList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestions = null,
    Object? isIncomplete = null,
  }) {
    return _then(_CompletionList(
      suggestions: null == suggestions
          ? _self._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<CompletionItem>,
      isIncomplete: null == isIncomplete
          ? _self.isIncomplete
          : isIncomplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CompletionRequest {
  /// The unique ID of the completion provider that was invoked.
  String get providerId;

  /// A unique ID for this specific request.
  String get requestId;

  /// The language ID of the document.
  String get language;

  /// The URI of the document.
  Uri? get uri;

  /// The position in the document where the request was triggered.
  Position get position;

  /// The default range to be replaced by a completion item.
  Range get defaultRange;

  /// The text of the line where the request was triggered.
  String? get lineText;

  /// The kind of trigger that initiated the completion request.
  int? get triggerKind;

  /// The character that triggered the completion request.
  String? get triggerCharacter;

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompletionRequestCopyWith<CompletionRequest> get copyWith =>
      _$CompletionRequestCopyWithImpl<CompletionRequest>(
          this as CompletionRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompletionRequest &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.defaultRange, defaultRange) ||
                other.defaultRange == defaultRange) &&
            (identical(other.lineText, lineText) ||
                other.lineText == lineText) &&
            (identical(other.triggerKind, triggerKind) ||
                other.triggerKind == triggerKind) &&
            (identical(other.triggerCharacter, triggerCharacter) ||
                other.triggerCharacter == triggerCharacter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, providerId, requestId, language,
      uri, position, defaultRange, lineText, triggerKind, triggerCharacter);

  @override
  String toString() {
    return 'CompletionRequest(providerId: $providerId, requestId: $requestId, language: $language, uri: $uri, position: $position, defaultRange: $defaultRange, lineText: $lineText, triggerKind: $triggerKind, triggerCharacter: $triggerCharacter)';
  }
}

/// @nodoc
abstract mixin class $CompletionRequestCopyWith<$Res> {
  factory $CompletionRequestCopyWith(
          CompletionRequest value, $Res Function(CompletionRequest) _then) =
      _$CompletionRequestCopyWithImpl;
  @useResult
  $Res call(
      {String providerId,
      String requestId,
      String language,
      Uri? uri,
      Position position,
      Range defaultRange,
      String? lineText,
      int? triggerKind,
      String? triggerCharacter});

  $PositionCopyWith<$Res> get position;
  $RangeCopyWith<$Res> get defaultRange;
}

/// @nodoc
class _$CompletionRequestCopyWithImpl<$Res>
    implements $CompletionRequestCopyWith<$Res> {
  _$CompletionRequestCopyWithImpl(this._self, this._then);

  final CompletionRequest _self;
  final $Res Function(CompletionRequest) _then;

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerId = null,
    Object? requestId = null,
    Object? language = null,
    Object? uri = freezed,
    Object? position = null,
    Object? defaultRange = null,
    Object? lineText = freezed,
    Object? triggerKind = freezed,
    Object? triggerCharacter = freezed,
  }) {
    return _then(_self.copyWith(
      providerId: null == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      defaultRange: null == defaultRange
          ? _self.defaultRange
          : defaultRange // ignore: cast_nullable_to_non_nullable
              as Range,
      lineText: freezed == lineText
          ? _self.lineText
          : lineText // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerKind: freezed == triggerKind
          ? _self.triggerKind
          : triggerKind // ignore: cast_nullable_to_non_nullable
              as int?,
      triggerCharacter: freezed == triggerCharacter
          ? _self.triggerCharacter
          : triggerCharacter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get defaultRange {
    return $RangeCopyWith<$Res>(_self.defaultRange, (value) {
      return _then(_self.copyWith(defaultRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CompletionRequest].
extension CompletionRequestPatterns on CompletionRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CompletionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CompletionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CompletionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String providerId,
            String requestId,
            String language,
            Uri? uri,
            Position position,
            Range defaultRange,
            String? lineText,
            int? triggerKind,
            String? triggerCharacter)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest() when $default != null:
        return $default(
            _that.providerId,
            _that.requestId,
            _that.language,
            _that.uri,
            _that.position,
            _that.defaultRange,
            _that.lineText,
            _that.triggerKind,
            _that.triggerCharacter);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String providerId,
            String requestId,
            String language,
            Uri? uri,
            Position position,
            Range defaultRange,
            String? lineText,
            int? triggerKind,
            String? triggerCharacter)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest():
        return $default(
            _that.providerId,
            _that.requestId,
            _that.language,
            _that.uri,
            _that.position,
            _that.defaultRange,
            _that.lineText,
            _that.triggerKind,
            _that.triggerCharacter);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String providerId,
            String requestId,
            String language,
            Uri? uri,
            Position position,
            Range defaultRange,
            String? lineText,
            int? triggerKind,
            String? triggerCharacter)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletionRequest() when $default != null:
        return $default(
            _that.providerId,
            _that.requestId,
            _that.language,
            _that.uri,
            _that.position,
            _that.defaultRange,
            _that.lineText,
            _that.triggerKind,
            _that.triggerCharacter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CompletionRequest extends CompletionRequest {
  const _CompletionRequest(
      {required this.providerId,
      required this.requestId,
      required this.language,
      this.uri,
      required this.position,
      required this.defaultRange,
      this.lineText,
      this.triggerKind,
      this.triggerCharacter})
      : super._();

  /// The unique ID of the completion provider that was invoked.
  @override
  final String providerId;

  /// A unique ID for this specific request.
  @override
  final String requestId;

  /// The language ID of the document.
  @override
  final String language;

  /// The URI of the document.
  @override
  final Uri? uri;

  /// The position in the document where the request was triggered.
  @override
  final Position position;

  /// The default range to be replaced by a completion item.
  @override
  final Range defaultRange;

  /// The text of the line where the request was triggered.
  @override
  final String? lineText;

  /// The kind of trigger that initiated the completion request.
  @override
  final int? triggerKind;

  /// The character that triggered the completion request.
  @override
  final String? triggerCharacter;

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompletionRequestCopyWith<_CompletionRequest> get copyWith =>
      __$CompletionRequestCopyWithImpl<_CompletionRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletionRequest &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.defaultRange, defaultRange) ||
                other.defaultRange == defaultRange) &&
            (identical(other.lineText, lineText) ||
                other.lineText == lineText) &&
            (identical(other.triggerKind, triggerKind) ||
                other.triggerKind == triggerKind) &&
            (identical(other.triggerCharacter, triggerCharacter) ||
                other.triggerCharacter == triggerCharacter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, providerId, requestId, language,
      uri, position, defaultRange, lineText, triggerKind, triggerCharacter);

  @override
  String toString() {
    return 'CompletionRequest(providerId: $providerId, requestId: $requestId, language: $language, uri: $uri, position: $position, defaultRange: $defaultRange, lineText: $lineText, triggerKind: $triggerKind, triggerCharacter: $triggerCharacter)';
  }
}

/// @nodoc
abstract mixin class _$CompletionRequestCopyWith<$Res>
    implements $CompletionRequestCopyWith<$Res> {
  factory _$CompletionRequestCopyWith(
          _CompletionRequest value, $Res Function(_CompletionRequest) _then) =
      __$CompletionRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String providerId,
      String requestId,
      String language,
      Uri? uri,
      Position position,
      Range defaultRange,
      String? lineText,
      int? triggerKind,
      String? triggerCharacter});

  @override
  $PositionCopyWith<$Res> get position;
  @override
  $RangeCopyWith<$Res> get defaultRange;
}

/// @nodoc
class __$CompletionRequestCopyWithImpl<$Res>
    implements _$CompletionRequestCopyWith<$Res> {
  __$CompletionRequestCopyWithImpl(this._self, this._then);

  final _CompletionRequest _self;
  final $Res Function(_CompletionRequest) _then;

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? providerId = null,
    Object? requestId = null,
    Object? language = null,
    Object? uri = freezed,
    Object? position = null,
    Object? defaultRange = null,
    Object? lineText = freezed,
    Object? triggerKind = freezed,
    Object? triggerCharacter = freezed,
  }) {
    return _then(_CompletionRequest(
      providerId: null == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      defaultRange: null == defaultRange
          ? _self.defaultRange
          : defaultRange // ignore: cast_nullable_to_non_nullable
              as Range,
      lineText: freezed == lineText
          ? _self.lineText
          : lineText // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerKind: freezed == triggerKind
          ? _self.triggerKind
          : triggerKind // ignore: cast_nullable_to_non_nullable
              as int?,
      triggerCharacter: freezed == triggerCharacter
          ? _self.triggerCharacter
          : triggerCharacter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of CompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get defaultRange {
    return $RangeCopyWith<$Res>(_self.defaultRange, (value) {
      return _then(_self.copyWith(defaultRange: value));
    });
  }
}

/// @nodoc
mixin _$FindOptions {
  /// If `true`, treats the search query as a regular expression.
  bool get isRegex;

  /// If `true`, performs a case-sensitive search.
  bool get matchCase;

  /// If `true`, only matches whole words.
  bool get wholeWord;

  /// If `true`, searches only within the editable range of the document.
  bool? get searchOnlyEditableRange;

  /// The maximum number of matches to find.
  int? get limitResultCount;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FindOptionsCopyWith<FindOptions> get copyWith =>
      _$FindOptionsCopyWithImpl<FindOptions>(this as FindOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindOptions &&
            (identical(other.isRegex, isRegex) || other.isRegex == isRegex) &&
            (identical(other.matchCase, matchCase) ||
                other.matchCase == matchCase) &&
            (identical(other.wholeWord, wholeWord) ||
                other.wholeWord == wholeWord) &&
            (identical(
                    other.searchOnlyEditableRange, searchOnlyEditableRange) ||
                other.searchOnlyEditableRange == searchOnlyEditableRange) &&
            (identical(other.limitResultCount, limitResultCount) ||
                other.limitResultCount == limitResultCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegex, matchCase, wholeWord,
      searchOnlyEditableRange, limitResultCount);

  @override
  String toString() {
    return 'FindOptions(isRegex: $isRegex, matchCase: $matchCase, wholeWord: $wholeWord, searchOnlyEditableRange: $searchOnlyEditableRange, limitResultCount: $limitResultCount)';
  }
}

/// @nodoc
abstract mixin class $FindOptionsCopyWith<$Res> {
  factory $FindOptionsCopyWith(
          FindOptions value, $Res Function(FindOptions) _then) =
      _$FindOptionsCopyWithImpl;
  @useResult
  $Res call(
      {bool isRegex,
      bool matchCase,
      bool wholeWord,
      bool? searchOnlyEditableRange,
      int? limitResultCount});
}

/// @nodoc
class _$FindOptionsCopyWithImpl<$Res> implements $FindOptionsCopyWith<$Res> {
  _$FindOptionsCopyWithImpl(this._self, this._then);

  final FindOptions _self;
  final $Res Function(FindOptions) _then;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegex = null,
    Object? matchCase = null,
    Object? wholeWord = null,
    Object? searchOnlyEditableRange = freezed,
    Object? limitResultCount = freezed,
  }) {
    return _then(_self.copyWith(
      isRegex: null == isRegex
          ? _self.isRegex
          : isRegex // ignore: cast_nullable_to_non_nullable
              as bool,
      matchCase: null == matchCase
          ? _self.matchCase
          : matchCase // ignore: cast_nullable_to_non_nullable
              as bool,
      wholeWord: null == wholeWord
          ? _self.wholeWord
          : wholeWord // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOnlyEditableRange: freezed == searchOnlyEditableRange
          ? _self.searchOnlyEditableRange
          : searchOnlyEditableRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      limitResultCount: freezed == limitResultCount
          ? _self.limitResultCount
          : limitResultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FindOptions].
extension FindOptionsPatterns on FindOptions {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FindOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FindOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FindOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions():
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FindOptions extends FindOptions {
  const _FindOptions(
      {this.isRegex = false,
      this.matchCase = false,
      this.wholeWord = false,
      this.searchOnlyEditableRange,
      this.limitResultCount})
      : super._();

  /// If `true`, treats the search query as a regular expression.
  @override
  @JsonKey()
  final bool isRegex;

  /// If `true`, performs a case-sensitive search.
  @override
  @JsonKey()
  final bool matchCase;

  /// If `true`, only matches whole words.
  @override
  @JsonKey()
  final bool wholeWord;

  /// If `true`, searches only within the editable range of the document.
  @override
  final bool? searchOnlyEditableRange;

  /// The maximum number of matches to find.
  @override
  final int? limitResultCount;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FindOptionsCopyWith<_FindOptions> get copyWith =>
      __$FindOptionsCopyWithImpl<_FindOptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FindOptions &&
            (identical(other.isRegex, isRegex) || other.isRegex == isRegex) &&
            (identical(other.matchCase, matchCase) ||
                other.matchCase == matchCase) &&
            (identical(other.wholeWord, wholeWord) ||
                other.wholeWord == wholeWord) &&
            (identical(
                    other.searchOnlyEditableRange, searchOnlyEditableRange) ||
                other.searchOnlyEditableRange == searchOnlyEditableRange) &&
            (identical(other.limitResultCount, limitResultCount) ||
                other.limitResultCount == limitResultCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegex, matchCase, wholeWord,
      searchOnlyEditableRange, limitResultCount);

  @override
  String toString() {
    return 'FindOptions(isRegex: $isRegex, matchCase: $matchCase, wholeWord: $wholeWord, searchOnlyEditableRange: $searchOnlyEditableRange, limitResultCount: $limitResultCount)';
  }
}

/// @nodoc
abstract mixin class _$FindOptionsCopyWith<$Res>
    implements $FindOptionsCopyWith<$Res> {
  factory _$FindOptionsCopyWith(
          _FindOptions value, $Res Function(_FindOptions) _then) =
      __$FindOptionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isRegex,
      bool matchCase,
      bool wholeWord,
      bool? searchOnlyEditableRange,
      int? limitResultCount});
}

/// @nodoc
class __$FindOptionsCopyWithImpl<$Res> implements _$FindOptionsCopyWith<$Res> {
  __$FindOptionsCopyWithImpl(this._self, this._then);

  final _FindOptions _self;
  final $Res Function(_FindOptions) _then;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isRegex = null,
    Object? matchCase = null,
    Object? wholeWord = null,
    Object? searchOnlyEditableRange = freezed,
    Object? limitResultCount = freezed,
  }) {
    return _then(_FindOptions(
      isRegex: null == isRegex
          ? _self.isRegex
          : isRegex // ignore: cast_nullable_to_non_nullable
              as bool,
      matchCase: null == matchCase
          ? _self.matchCase
          : matchCase // ignore: cast_nullable_to_non_nullable
              as bool,
      wholeWord: null == wholeWord
          ? _self.wholeWord
          : wholeWord // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOnlyEditableRange: freezed == searchOnlyEditableRange
          ? _self.searchOnlyEditableRange
          : searchOnlyEditableRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      limitResultCount: freezed == limitResultCount
          ? _self.limitResultCount
          : limitResultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$LiveStats {
  /// The total number of lines in the document.
  ({int value, String label}) get lineCount;

  /// The total number of characters in the document.
  ({int value, String label}) get charCount;

  /// The number of lines in the current selection.
  ({int value, String label}) get selectedLines;

  /// The number of characters in the current selection.
  ({int value, String label}) get selectedCharacters;

  /// The number of active cursors/selections.
  ({int value, String label}) get caretCount;

  /// The current cursor position, formatted as "line:column".
  ({int value, String label})? get cursorPosition;

  /// The language ID of the current document.
  String? get language;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<LiveStats> get copyWith =>
      _$LiveStatsCopyWithImpl<LiveStats>(this as LiveStats, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LiveStats &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.charCount, charCount) ||
                other.charCount == charCount) &&
            (identical(other.selectedLines, selectedLines) ||
                other.selectedLines == selectedLines) &&
            (identical(other.selectedCharacters, selectedCharacters) ||
                other.selectedCharacters == selectedCharacters) &&
            (identical(other.caretCount, caretCount) ||
                other.caretCount == caretCount) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lineCount, charCount,
      selectedLines, selectedCharacters, caretCount, cursorPosition, language);

  @override
  String toString() {
    return 'LiveStats(lineCount: $lineCount, charCount: $charCount, selectedLines: $selectedLines, selectedCharacters: $selectedCharacters, caretCount: $caretCount, cursorPosition: $cursorPosition, language: $language)';
  }
}

/// @nodoc
abstract mixin class $LiveStatsCopyWith<$Res> {
  factory $LiveStatsCopyWith(LiveStats value, $Res Function(LiveStats) _then) =
      _$LiveStatsCopyWithImpl;
  @useResult
  $Res call(
      {({int value, String label}) lineCount,
      ({int value, String label}) charCount,
      ({int value, String label}) selectedLines,
      ({int value, String label}) selectedCharacters,
      ({int value, String label}) caretCount,
      ({int value, String label})? cursorPosition,
      String? language});
}

/// @nodoc
class _$LiveStatsCopyWithImpl<$Res> implements $LiveStatsCopyWith<$Res> {
  _$LiveStatsCopyWithImpl(this._self, this._then);

  final LiveStats _self;
  final $Res Function(LiveStats) _then;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineCount = null,
    Object? charCount = null,
    Object? selectedLines = null,
    Object? selectedCharacters = null,
    Object? caretCount = null,
    Object? cursorPosition = freezed,
    Object? language = freezed,
  }) {
    return _then(_self.copyWith(
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      charCount: null == charCount
          ? _self.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedLines: null == selectedLines
          ? _self.selectedLines
          : selectedLines // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedCharacters: null == selectedCharacters
          ? _self.selectedCharacters
          : selectedCharacters // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      caretCount: null == caretCount
          ? _self.caretCount
          : caretCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as ({int value, String label})?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LiveStats].
extension LiveStatsPatterns on LiveStats {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LiveStats value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LiveStats value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LiveStats value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats():
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LiveStats extends LiveStats {
  const _LiveStats(
      {required this.lineCount,
      required this.charCount,
      required this.selectedLines,
      required this.selectedCharacters,
      required this.caretCount,
      this.cursorPosition,
      this.language})
      : super._();

  /// The total number of lines in the document.
  @override
  final ({int value, String label}) lineCount;

  /// The total number of characters in the document.
  @override
  final ({int value, String label}) charCount;

  /// The number of lines in the current selection.
  @override
  final ({int value, String label}) selectedLines;

  /// The number of characters in the current selection.
  @override
  final ({int value, String label}) selectedCharacters;

  /// The number of active cursors/selections.
  @override
  final ({int value, String label}) caretCount;

  /// The current cursor position, formatted as "line:column".
  @override
  final ({int value, String label})? cursorPosition;

  /// The language ID of the current document.
  @override
  final String? language;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LiveStatsCopyWith<_LiveStats> get copyWith =>
      __$LiveStatsCopyWithImpl<_LiveStats>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LiveStats &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.charCount, charCount) ||
                other.charCount == charCount) &&
            (identical(other.selectedLines, selectedLines) ||
                other.selectedLines == selectedLines) &&
            (identical(other.selectedCharacters, selectedCharacters) ||
                other.selectedCharacters == selectedCharacters) &&
            (identical(other.caretCount, caretCount) ||
                other.caretCount == caretCount) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lineCount, charCount,
      selectedLines, selectedCharacters, caretCount, cursorPosition, language);

  @override
  String toString() {
    return 'LiveStats(lineCount: $lineCount, charCount: $charCount, selectedLines: $selectedLines, selectedCharacters: $selectedCharacters, caretCount: $caretCount, cursorPosition: $cursorPosition, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$LiveStatsCopyWith<$Res>
    implements $LiveStatsCopyWith<$Res> {
  factory _$LiveStatsCopyWith(
          _LiveStats value, $Res Function(_LiveStats) _then) =
      __$LiveStatsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {({int value, String label}) lineCount,
      ({int value, String label}) charCount,
      ({int value, String label}) selectedLines,
      ({int value, String label}) selectedCharacters,
      ({int value, String label}) caretCount,
      ({int value, String label})? cursorPosition,
      String? language});
}

/// @nodoc
class __$LiveStatsCopyWithImpl<$Res> implements _$LiveStatsCopyWith<$Res> {
  __$LiveStatsCopyWithImpl(this._self, this._then);

  final _LiveStats _self;
  final $Res Function(_LiveStats) _then;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lineCount = null,
    Object? charCount = null,
    Object? selectedLines = null,
    Object? selectedCharacters = null,
    Object? caretCount = null,
    Object? cursorPosition = freezed,
    Object? language = freezed,
  }) {
    return _then(_LiveStats(
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      charCount: null == charCount
          ? _self.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedLines: null == selectedLines
          ? _self.selectedLines
          : selectedLines // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedCharacters: null == selectedCharacters
          ? _self.selectedCharacters
          : selectedCharacters // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      caretCount: null == caretCount
          ? _self.caretCount
          : caretCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as ({int value, String label})?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$EditorState {
  /// The full text content of the editor.
  String get content;

  /// The current selection range.
  Range? get selection;

  /// The primary cursor position.
  Position? get cursorPosition;

  /// The total number of lines in the document.
  int get lineCount;

  /// `true` if the content has been modified since the last save.
  bool get hasUnsavedChanges;

  /// The language ID of the document.
  String? get language;

  /// The theme ID currently applied to the editor.
  String? get theme;

  /// A snapshot of live statistics.
  LiveStats? get stats;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorStateCopyWith<EditorState> get copyWith =>
      _$EditorStateCopyWithImpl<EditorState>(this as EditorState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selection, selection) ||
                other.selection == selection) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, selection,
      cursorPosition, lineCount, hasUnsavedChanges, language, theme, stats);

  @override
  String toString() {
    return 'EditorState(content: $content, selection: $selection, cursorPosition: $cursorPosition, lineCount: $lineCount, hasUnsavedChanges: $hasUnsavedChanges, language: $language, theme: $theme, stats: $stats)';
  }
}

/// @nodoc
abstract mixin class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) _then) =
      _$EditorStateCopyWithImpl;
  @useResult
  $Res call(
      {String content,
      Range? selection,
      Position? cursorPosition,
      int lineCount,
      bool hasUnsavedChanges,
      String? language,
      String? theme,
      LiveStats? stats});

  $RangeCopyWith<$Res>? get selection;
  $PositionCopyWith<$Res>? get cursorPosition;
  $LiveStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res> implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._self, this._then);

  final EditorState _self;
  final $Res Function(EditorState) _then;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? selection = freezed,
    Object? cursorPosition = freezed,
    Object? lineCount = null,
    Object? hasUnsavedChanges = null,
    Object? language = freezed,
    Object? theme = freezed,
    Object? stats = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selection: freezed == selection
          ? _self.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Range?,
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnsavedChanges: null == hasUnsavedChanges
          ? _self.hasUnsavedChanges
          : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: freezed == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LiveStats?,
    ));
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get selection {
    if (_self.selection == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.selection!, (value) {
      return _then(_self.copyWith(selection: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get cursorPosition {
    if (_self.cursorPosition == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_self.cursorPosition!, (value) {
      return _then(_self.copyWith(cursorPosition: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
      return null;
    }

    return $LiveStatsCopyWith<$Res>(_self.stats!, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EditorState].
extension EditorStatePatterns on EditorState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditorState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState():
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EditorState extends EditorState {
  const _EditorState(
      {required this.content,
      this.selection,
      this.cursorPosition,
      required this.lineCount,
      required this.hasUnsavedChanges,
      this.language,
      this.theme,
      this.stats})
      : super._();

  /// The full text content of the editor.
  @override
  final String content;

  /// The current selection range.
  @override
  final Range? selection;

  /// The primary cursor position.
  @override
  final Position? cursorPosition;

  /// The total number of lines in the document.
  @override
  final int lineCount;

  /// `true` if the content has been modified since the last save.
  @override
  final bool hasUnsavedChanges;

  /// The language ID of the document.
  @override
  final String? language;

  /// The theme ID currently applied to the editor.
  @override
  final String? theme;

  /// A snapshot of live statistics.
  @override
  final LiveStats? stats;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selection, selection) ||
                other.selection == selection) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, selection,
      cursorPosition, lineCount, hasUnsavedChanges, language, theme, stats);

  @override
  String toString() {
    return 'EditorState(content: $content, selection: $selection, cursorPosition: $cursorPosition, lineCount: $lineCount, hasUnsavedChanges: $hasUnsavedChanges, language: $language, theme: $theme, stats: $stats)';
  }
}

/// @nodoc
abstract mixin class _$EditorStateCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(
          _EditorState value, $Res Function(_EditorState) _then) =
      __$EditorStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String content,
      Range? selection,
      Position? cursorPosition,
      int lineCount,
      bool hasUnsavedChanges,
      String? language,
      String? theme,
      LiveStats? stats});

  @override
  $RangeCopyWith<$Res>? get selection;
  @override
  $PositionCopyWith<$Res>? get cursorPosition;
  @override
  $LiveStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$EditorStateCopyWithImpl<$Res> implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(this._self, this._then);

  final _EditorState _self;
  final $Res Function(_EditorState) _then;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? selection = freezed,
    Object? cursorPosition = freezed,
    Object? lineCount = null,
    Object? hasUnsavedChanges = null,
    Object? language = freezed,
    Object? theme = freezed,
    Object? stats = freezed,
  }) {
    return _then(_EditorState(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selection: freezed == selection
          ? _self.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Range?,
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnsavedChanges: null == hasUnsavedChanges
          ? _self.hasUnsavedChanges
          : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: freezed == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LiveStats?,
    ));
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get selection {
    if (_self.selection == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.selection!, (value) {
      return _then(_self.copyWith(selection: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get cursorPosition {
    if (_self.cursorPosition == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_self.cursorPosition!, (value) {
      return _then(_self.copyWith(cursorPosition: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
      return null;
    }

    return $LiveStatsCopyWith<$Res>(_self.stats!, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

/// @nodoc
mixin _$FindMatch {
  /// The range of the matched text.
  Range get range;

  /// The text that was matched.
  String? get match;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FindMatchCopyWith<FindMatch> get copyWith =>
      _$FindMatchCopyWithImpl<FindMatch>(this as FindMatch, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindMatch &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.match, match) || other.match == match));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, match);

  @override
  String toString() {
    return 'FindMatch(range: $range, match: $match)';
  }
}

/// @nodoc
abstract mixin class $FindMatchCopyWith<$Res> {
  factory $FindMatchCopyWith(FindMatch value, $Res Function(FindMatch) _then) =
      _$FindMatchCopyWithImpl;
  @useResult
  $Res call({Range range, String? match});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$FindMatchCopyWithImpl<$Res> implements $FindMatchCopyWith<$Res> {
  _$FindMatchCopyWithImpl(this._self, this._then);

  final FindMatch _self;
  final $Res Function(FindMatch) _then;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? match = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FindMatch].
extension FindMatchPatterns on FindMatch {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FindMatch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FindMatch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FindMatch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Range range, String? match)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that.range, _that.match);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Range range, String? match) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch():
        return $default(_that.range, _that.match);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Range range, String? match)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that.range, _that.match);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FindMatch extends FindMatch {
  const _FindMatch({required this.range, this.match}) : super._();

  /// The range of the matched text.
  @override
  final Range range;

  /// The text that was matched.
  @override
  final String? match;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FindMatchCopyWith<_FindMatch> get copyWith =>
      __$FindMatchCopyWithImpl<_FindMatch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FindMatch &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.match, match) || other.match == match));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, match);

  @override
  String toString() {
    return 'FindMatch(range: $range, match: $match)';
  }
}

/// @nodoc
abstract mixin class _$FindMatchCopyWith<$Res>
    implements $FindMatchCopyWith<$Res> {
  factory _$FindMatchCopyWith(
          _FindMatch value, $Res Function(_FindMatch) _then) =
      __$FindMatchCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, String? match});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$FindMatchCopyWithImpl<$Res> implements _$FindMatchCopyWith<$Res> {
  __$FindMatchCopyWithImpl(this._self, this._then);

  final _FindMatch _self;
  final $Res Function(_FindMatch) _then;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? match = freezed,
  }) {
    return _then(_FindMatch(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$JsonDiagnosticsOptions {
  /// If set, comments are tolerated. If set to false, syntax errors will be emitted for comments
  bool? get allowComments;

  /// If set, the schema service would load schema content on-demand with 'fetch' if available
  bool? get enableSchemaRequest;

  /// If set, the schema service would validate schemas and report errors.
  bool? get validate;

  /// The severity level to use for schema request errors (e.g., if a schema fails to load).
  /// Defaults to `warning` if not specified.
  DiagnosticsSeverity? get schemaRequest;

  /// The severity level to use for schema validation errors, `ignore` will disable validation.
  /// Defaults to `warning` if not specified.
  DiagnosticsSeverity? get schemaValidation;

  /// The severity level to use for trailing comma errors. Defaults to `error` if not specified.
  DiagnosticsSeverity? get trailingCommas;

  /// The severity level to use for comments if `allowComments` is `true`. Defaults to `info` if not specified.
  DiagnosticsSeverity? get comments;

  /// A list of known schemas and/or associations of schemas to file names.
  List<JsonDiagnosticsSchema>? get schemas;

  /// Create a copy of JsonDiagnosticsOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonDiagnosticsOptionsCopyWith<JsonDiagnosticsOptions> get copyWith =>
      _$JsonDiagnosticsOptionsCopyWithImpl<JsonDiagnosticsOptions>(
          this as JsonDiagnosticsOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonDiagnosticsOptions &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.enableSchemaRequest, enableSchemaRequest) ||
                other.enableSchemaRequest == enableSchemaRequest) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.schemaRequest, schemaRequest) ||
                other.schemaRequest == schemaRequest) &&
            (identical(other.schemaValidation, schemaValidation) ||
                other.schemaValidation == schemaValidation) &&
            (identical(other.trailingCommas, trailingCommas) ||
                other.trailingCommas == trailingCommas) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            const DeepCollectionEquality().equals(other.schemas, schemas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowComments,
      enableSchemaRequest,
      validate,
      schemaRequest,
      schemaValidation,
      trailingCommas,
      comments,
      const DeepCollectionEquality().hash(schemas));

  @override
  String toString() {
    return 'JsonDiagnosticsOptions(allowComments: $allowComments, enableSchemaRequest: $enableSchemaRequest, validate: $validate, schemaRequest: $schemaRequest, schemaValidation: $schemaValidation, trailingCommas: $trailingCommas, comments: $comments, schemas: $schemas)';
  }
}

/// @nodoc
abstract mixin class $JsonDiagnosticsOptionsCopyWith<$Res> {
  factory $JsonDiagnosticsOptionsCopyWith(JsonDiagnosticsOptions value,
          $Res Function(JsonDiagnosticsOptions) _then) =
      _$JsonDiagnosticsOptionsCopyWithImpl;
  @useResult
  $Res call(
      {bool? allowComments,
      bool? enableSchemaRequest,
      bool? validate,
      DiagnosticsSeverity? schemaRequest,
      DiagnosticsSeverity? schemaValidation,
      DiagnosticsSeverity? trailingCommas,
      DiagnosticsSeverity? comments,
      List<JsonDiagnosticsSchema>? schemas});
}

/// @nodoc
class _$JsonDiagnosticsOptionsCopyWithImpl<$Res>
    implements $JsonDiagnosticsOptionsCopyWith<$Res> {
  _$JsonDiagnosticsOptionsCopyWithImpl(this._self, this._then);

  final JsonDiagnosticsOptions _self;
  final $Res Function(JsonDiagnosticsOptions) _then;

  /// Create a copy of JsonDiagnosticsOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowComments = freezed,
    Object? enableSchemaRequest = freezed,
    Object? validate = freezed,
    Object? schemaRequest = freezed,
    Object? schemaValidation = freezed,
    Object? trailingCommas = freezed,
    Object? comments = freezed,
    Object? schemas = freezed,
  }) {
    return _then(_self.copyWith(
      allowComments: freezed == allowComments
          ? _self.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSchemaRequest: freezed == enableSchemaRequest
          ? _self.enableSchemaRequest
          : enableSchemaRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      validate: freezed == validate
          ? _self.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool?,
      schemaRequest: freezed == schemaRequest
          ? _self.schemaRequest
          : schemaRequest // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      schemaValidation: freezed == schemaValidation
          ? _self.schemaValidation
          : schemaValidation // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      trailingCommas: freezed == trailingCommas
          ? _self.trailingCommas
          : trailingCommas // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      comments: freezed == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      schemas: freezed == schemas
          ? _self.schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as List<JsonDiagnosticsSchema>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [JsonDiagnosticsOptions].
extension JsonDiagnosticsOptionsPatterns on JsonDiagnosticsOptions {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JsonDiagnosticsOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_JsonDiagnosticsOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_JsonDiagnosticsOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool? allowComments,
            bool? enableSchemaRequest,
            bool? validate,
            DiagnosticsSeverity? schemaRequest,
            DiagnosticsSeverity? schemaValidation,
            DiagnosticsSeverity? trailingCommas,
            DiagnosticsSeverity? comments,
            List<JsonDiagnosticsSchema>? schemas)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions() when $default != null:
        return $default(
            _that.allowComments,
            _that.enableSchemaRequest,
            _that.validate,
            _that.schemaRequest,
            _that.schemaValidation,
            _that.trailingCommas,
            _that.comments,
            _that.schemas);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool? allowComments,
            bool? enableSchemaRequest,
            bool? validate,
            DiagnosticsSeverity? schemaRequest,
            DiagnosticsSeverity? schemaValidation,
            DiagnosticsSeverity? trailingCommas,
            DiagnosticsSeverity? comments,
            List<JsonDiagnosticsSchema>? schemas)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions():
        return $default(
            _that.allowComments,
            _that.enableSchemaRequest,
            _that.validate,
            _that.schemaRequest,
            _that.schemaValidation,
            _that.trailingCommas,
            _that.comments,
            _that.schemas);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool? allowComments,
            bool? enableSchemaRequest,
            bool? validate,
            DiagnosticsSeverity? schemaRequest,
            DiagnosticsSeverity? schemaValidation,
            DiagnosticsSeverity? trailingCommas,
            DiagnosticsSeverity? comments,
            List<JsonDiagnosticsSchema>? schemas)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsOptions() when $default != null:
        return $default(
            _that.allowComments,
            _that.enableSchemaRequest,
            _that.validate,
            _that.schemaRequest,
            _that.schemaValidation,
            _that.trailingCommas,
            _that.comments,
            _that.schemas);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _JsonDiagnosticsOptions extends JsonDiagnosticsOptions {
  const _JsonDiagnosticsOptions(
      {this.allowComments,
      this.enableSchemaRequest,
      this.validate,
      this.schemaRequest,
      this.schemaValidation,
      this.trailingCommas,
      this.comments,
      final List<JsonDiagnosticsSchema>? schemas})
      : _schemas = schemas,
        super._();

  /// If set, comments are tolerated. If set to false, syntax errors will be emitted for comments
  @override
  final bool? allowComments;

  /// If set, the schema service would load schema content on-demand with 'fetch' if available
  @override
  final bool? enableSchemaRequest;

  /// If set, the schema service would validate schemas and report errors.
  @override
  final bool? validate;

  /// The severity level to use for schema request errors (e.g., if a schema fails to load).
  /// Defaults to `warning` if not specified.
  @override
  final DiagnosticsSeverity? schemaRequest;

  /// The severity level to use for schema validation errors, `ignore` will disable validation.
  /// Defaults to `warning` if not specified.
  @override
  final DiagnosticsSeverity? schemaValidation;

  /// The severity level to use for trailing comma errors. Defaults to `error` if not specified.
  @override
  final DiagnosticsSeverity? trailingCommas;

  /// The severity level to use for comments if `allowComments` is `true`. Defaults to `info` if not specified.
  @override
  final DiagnosticsSeverity? comments;

  /// A list of known schemas and/or associations of schemas to file names.
  final List<JsonDiagnosticsSchema>? _schemas;

  /// A list of known schemas and/or associations of schemas to file names.
  @override
  List<JsonDiagnosticsSchema>? get schemas {
    final value = _schemas;
    if (value == null) return null;
    if (_schemas is EqualUnmodifiableListView) return _schemas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of JsonDiagnosticsOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JsonDiagnosticsOptionsCopyWith<_JsonDiagnosticsOptions> get copyWith =>
      __$JsonDiagnosticsOptionsCopyWithImpl<_JsonDiagnosticsOptions>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JsonDiagnosticsOptions &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.enableSchemaRequest, enableSchemaRequest) ||
                other.enableSchemaRequest == enableSchemaRequest) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.schemaRequest, schemaRequest) ||
                other.schemaRequest == schemaRequest) &&
            (identical(other.schemaValidation, schemaValidation) ||
                other.schemaValidation == schemaValidation) &&
            (identical(other.trailingCommas, trailingCommas) ||
                other.trailingCommas == trailingCommas) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            const DeepCollectionEquality().equals(other._schemas, _schemas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowComments,
      enableSchemaRequest,
      validate,
      schemaRequest,
      schemaValidation,
      trailingCommas,
      comments,
      const DeepCollectionEquality().hash(_schemas));

  @override
  String toString() {
    return 'JsonDiagnosticsOptions(allowComments: $allowComments, enableSchemaRequest: $enableSchemaRequest, validate: $validate, schemaRequest: $schemaRequest, schemaValidation: $schemaValidation, trailingCommas: $trailingCommas, comments: $comments, schemas: $schemas)';
  }
}

/// @nodoc
abstract mixin class _$JsonDiagnosticsOptionsCopyWith<$Res>
    implements $JsonDiagnosticsOptionsCopyWith<$Res> {
  factory _$JsonDiagnosticsOptionsCopyWith(_JsonDiagnosticsOptions value,
          $Res Function(_JsonDiagnosticsOptions) _then) =
      __$JsonDiagnosticsOptionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? allowComments,
      bool? enableSchemaRequest,
      bool? validate,
      DiagnosticsSeverity? schemaRequest,
      DiagnosticsSeverity? schemaValidation,
      DiagnosticsSeverity? trailingCommas,
      DiagnosticsSeverity? comments,
      List<JsonDiagnosticsSchema>? schemas});
}

/// @nodoc
class __$JsonDiagnosticsOptionsCopyWithImpl<$Res>
    implements _$JsonDiagnosticsOptionsCopyWith<$Res> {
  __$JsonDiagnosticsOptionsCopyWithImpl(this._self, this._then);

  final _JsonDiagnosticsOptions _self;
  final $Res Function(_JsonDiagnosticsOptions) _then;

  /// Create a copy of JsonDiagnosticsOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allowComments = freezed,
    Object? enableSchemaRequest = freezed,
    Object? validate = freezed,
    Object? schemaRequest = freezed,
    Object? schemaValidation = freezed,
    Object? trailingCommas = freezed,
    Object? comments = freezed,
    Object? schemas = freezed,
  }) {
    return _then(_JsonDiagnosticsOptions(
      allowComments: freezed == allowComments
          ? _self.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSchemaRequest: freezed == enableSchemaRequest
          ? _self.enableSchemaRequest
          : enableSchemaRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      validate: freezed == validate
          ? _self.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool?,
      schemaRequest: freezed == schemaRequest
          ? _self.schemaRequest
          : schemaRequest // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      schemaValidation: freezed == schemaValidation
          ? _self.schemaValidation
          : schemaValidation // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      trailingCommas: freezed == trailingCommas
          ? _self.trailingCommas
          : trailingCommas // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      comments: freezed == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as DiagnosticsSeverity?,
      schemas: freezed == schemas
          ? _self._schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as List<JsonDiagnosticsSchema>?,
    ));
  }
}

/// @nodoc
mixin _$JsonDiagnosticsSchema {
  /// The URI of the schema to validate against.
  Uri get uri;
  List<String>? get fileMatch;
  Map<String, dynamic>? get schema;

  /// Create a copy of JsonDiagnosticsSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonDiagnosticsSchemaCopyWith<JsonDiagnosticsSchema> get copyWith =>
      _$JsonDiagnosticsSchemaCopyWithImpl<JsonDiagnosticsSchema>(
          this as JsonDiagnosticsSchema, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonDiagnosticsSchema &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other.fileMatch, fileMatch) &&
            const DeepCollectionEquality().equals(other.schema, schema));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(fileMatch),
      const DeepCollectionEquality().hash(schema));

  @override
  String toString() {
    return 'JsonDiagnosticsSchema(uri: $uri, fileMatch: $fileMatch, schema: $schema)';
  }
}

/// @nodoc
abstract mixin class $JsonDiagnosticsSchemaCopyWith<$Res> {
  factory $JsonDiagnosticsSchemaCopyWith(JsonDiagnosticsSchema value,
          $Res Function(JsonDiagnosticsSchema) _then) =
      _$JsonDiagnosticsSchemaCopyWithImpl;
  @useResult
  $Res call({Uri uri, List<String>? fileMatch, Map<String, dynamic>? schema});
}

/// @nodoc
class _$JsonDiagnosticsSchemaCopyWithImpl<$Res>
    implements $JsonDiagnosticsSchemaCopyWith<$Res> {
  _$JsonDiagnosticsSchemaCopyWithImpl(this._self, this._then);

  final JsonDiagnosticsSchema _self;
  final $Res Function(JsonDiagnosticsSchema) _then;

  /// Create a copy of JsonDiagnosticsSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? fileMatch = freezed,
    Object? schema = freezed,
  }) {
    return _then(_self.copyWith(
      uri: null == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      fileMatch: freezed == fileMatch
          ? _self.fileMatch
          : fileMatch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schema: freezed == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [JsonDiagnosticsSchema].
extension JsonDiagnosticsSchemaPatterns on JsonDiagnosticsSchema {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JsonDiagnosticsSchema value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_JsonDiagnosticsSchema value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_JsonDiagnosticsSchema value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Uri uri, List<String>? fileMatch, Map<String, dynamic>? schema)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema() when $default != null:
        return $default(_that.uri, _that.fileMatch, _that.schema);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Uri uri, List<String>? fileMatch, Map<String, dynamic>? schema)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema():
        return $default(_that.uri, _that.fileMatch, _that.schema);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Uri uri, List<String>? fileMatch, Map<String, dynamic>? schema)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JsonDiagnosticsSchema() when $default != null:
        return $default(_that.uri, _that.fileMatch, _that.schema);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _JsonDiagnosticsSchema extends JsonDiagnosticsSchema {
  const _JsonDiagnosticsSchema(
      {required this.uri,
      final List<String>? fileMatch,
      final Map<String, dynamic>? schema})
      : _fileMatch = fileMatch,
        _schema = schema,
        super._();

  /// The URI of the schema to validate against.
  @override
  final Uri uri;
  final List<String>? _fileMatch;
  @override
  List<String>? get fileMatch {
    final value = _fileMatch;
    if (value == null) return null;
    if (_fileMatch is EqualUnmodifiableListView) return _fileMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _schema;
  @override
  Map<String, dynamic>? get schema {
    final value = _schema;
    if (value == null) return null;
    if (_schema is EqualUnmodifiableMapView) return _schema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of JsonDiagnosticsSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JsonDiagnosticsSchemaCopyWith<_JsonDiagnosticsSchema> get copyWith =>
      __$JsonDiagnosticsSchemaCopyWithImpl<_JsonDiagnosticsSchema>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JsonDiagnosticsSchema &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality()
                .equals(other._fileMatch, _fileMatch) &&
            const DeepCollectionEquality().equals(other._schema, _schema));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_fileMatch),
      const DeepCollectionEquality().hash(_schema));

  @override
  String toString() {
    return 'JsonDiagnosticsSchema(uri: $uri, fileMatch: $fileMatch, schema: $schema)';
  }
}

/// @nodoc
abstract mixin class _$JsonDiagnosticsSchemaCopyWith<$Res>
    implements $JsonDiagnosticsSchemaCopyWith<$Res> {
  factory _$JsonDiagnosticsSchemaCopyWith(_JsonDiagnosticsSchema value,
          $Res Function(_JsonDiagnosticsSchema) _then) =
      __$JsonDiagnosticsSchemaCopyWithImpl;
  @override
  @useResult
  $Res call({Uri uri, List<String>? fileMatch, Map<String, dynamic>? schema});
}

/// @nodoc
class __$JsonDiagnosticsSchemaCopyWithImpl<$Res>
    implements _$JsonDiagnosticsSchemaCopyWith<$Res> {
  __$JsonDiagnosticsSchemaCopyWithImpl(this._self, this._then);

  final _JsonDiagnosticsSchema _self;
  final $Res Function(_JsonDiagnosticsSchema) _then;

  /// Create a copy of JsonDiagnosticsSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = null,
    Object? fileMatch = freezed,
    Object? schema = freezed,
  }) {
    return _then(_JsonDiagnosticsSchema(
      uri: null == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      fileMatch: freezed == fileMatch
          ? _self._fileMatch
          : fileMatch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schema: freezed == schema
          ? _self._schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
