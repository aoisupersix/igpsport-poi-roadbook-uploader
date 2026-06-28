// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_log_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadLogEntry {

 UploadLogLevel get level; String get message; DateTime get time;
/// Create a copy of UploadLogEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadLogEntryCopyWith<UploadLogEntry> get copyWith => _$UploadLogEntryCopyWithImpl<UploadLogEntry>(this as UploadLogEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadLogEntry&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,level,message,time);

@override
String toString() {
  return 'UploadLogEntry(level: $level, message: $message, time: $time)';
}


}

/// @nodoc
abstract mixin class $UploadLogEntryCopyWith<$Res>  {
  factory $UploadLogEntryCopyWith(UploadLogEntry value, $Res Function(UploadLogEntry) _then) = _$UploadLogEntryCopyWithImpl;
@useResult
$Res call({
 UploadLogLevel level, String message, DateTime time
});




}
/// @nodoc
class _$UploadLogEntryCopyWithImpl<$Res>
    implements $UploadLogEntryCopyWith<$Res> {
  _$UploadLogEntryCopyWithImpl(this._self, this._then);

  final UploadLogEntry _self;
  final $Res Function(UploadLogEntry) _then;

/// Create a copy of UploadLogEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? message = null,Object? time = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as UploadLogLevel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadLogEntry].
extension UploadLogEntryPatterns on UploadLogEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadLogEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadLogEntry() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadLogEntry value)  $default,){
final _that = this;
switch (_that) {
case _UploadLogEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadLogEntry value)?  $default,){
final _that = this;
switch (_that) {
case _UploadLogEntry() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UploadLogLevel level,  String message,  DateTime time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadLogEntry() when $default != null:
return $default(_that.level,_that.message,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UploadLogLevel level,  String message,  DateTime time)  $default,) {final _that = this;
switch (_that) {
case _UploadLogEntry():
return $default(_that.level,_that.message,_that.time);case _:
  throw StateError('Unexpected subclass');

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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UploadLogLevel level,  String message,  DateTime time)?  $default,) {final _that = this;
switch (_that) {
case _UploadLogEntry() when $default != null:
return $default(_that.level,_that.message,_that.time);case _:
  return null;

}
}

}

/// @nodoc


class _UploadLogEntry implements UploadLogEntry {
  const _UploadLogEntry({required this.level, required this.message, required this.time});
  

@override final  UploadLogLevel level;
@override final  String message;
@override final  DateTime time;

/// Create a copy of UploadLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadLogEntryCopyWith<_UploadLogEntry> get copyWith => __$UploadLogEntryCopyWithImpl<_UploadLogEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadLogEntry&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,level,message,time);

@override
String toString() {
  return 'UploadLogEntry(level: $level, message: $message, time: $time)';
}


}

/// @nodoc
abstract mixin class _$UploadLogEntryCopyWith<$Res> implements $UploadLogEntryCopyWith<$Res> {
  factory _$UploadLogEntryCopyWith(_UploadLogEntry value, $Res Function(_UploadLogEntry) _then) = __$UploadLogEntryCopyWithImpl;
@override @useResult
$Res call({
 UploadLogLevel level, String message, DateTime time
});




}
/// @nodoc
class __$UploadLogEntryCopyWithImpl<$Res>
    implements _$UploadLogEntryCopyWith<$Res> {
  __$UploadLogEntryCopyWithImpl(this._self, this._then);

  final _UploadLogEntry _self;
  final $Res Function(_UploadLogEntry) _then;

/// Create a copy of UploadLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? message = null,Object? time = null,}) {
  return _then(_UploadLogEntry(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as UploadLogLevel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
