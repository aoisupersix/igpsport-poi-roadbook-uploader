// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadState {

 bool get isUploading; List<UploadLogEntry> get logs;/// Whether the last run finished successfully. Null while idle or running.
 bool? get succeeded;
/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadStateCopyWith<UploadState> get copyWith => _$UploadStateCopyWithImpl<UploadState>(this as UploadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&const DeepCollectionEquality().equals(other.logs, logs)&&(identical(other.succeeded, succeeded) || other.succeeded == succeeded));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,const DeepCollectionEquality().hash(logs),succeeded);

@override
String toString() {
  return 'UploadState(isUploading: $isUploading, logs: $logs, succeeded: $succeeded)';
}


}

/// @nodoc
abstract mixin class $UploadStateCopyWith<$Res>  {
  factory $UploadStateCopyWith(UploadState value, $Res Function(UploadState) _then) = _$UploadStateCopyWithImpl;
@useResult
$Res call({
 bool isUploading, List<UploadLogEntry> logs, bool? succeeded
});




}
/// @nodoc
class _$UploadStateCopyWithImpl<$Res>
    implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._self, this._then);

  final UploadState _self;
  final $Res Function(UploadState) _then;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUploading = null,Object? logs = null,Object? succeeded = freezed,}) {
  return _then(_self.copyWith(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,logs: null == logs ? _self.logs : logs // ignore: cast_nullable_to_non_nullable
as List<UploadLogEntry>,succeeded: freezed == succeeded ? _self.succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadState].
extension UploadStatePatterns on UploadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadState value)  $default,){
final _that = this;
switch (_that) {
case _UploadState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isUploading,  List<UploadLogEntry> logs,  bool? succeeded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadState() when $default != null:
return $default(_that.isUploading,_that.logs,_that.succeeded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isUploading,  List<UploadLogEntry> logs,  bool? succeeded)  $default,) {final _that = this;
switch (_that) {
case _UploadState():
return $default(_that.isUploading,_that.logs,_that.succeeded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isUploading,  List<UploadLogEntry> logs,  bool? succeeded)?  $default,) {final _that = this;
switch (_that) {
case _UploadState() when $default != null:
return $default(_that.isUploading,_that.logs,_that.succeeded);case _:
  return null;

}
}

}

/// @nodoc


class _UploadState implements UploadState {
  const _UploadState({this.isUploading = false, final  List<UploadLogEntry> logs = const <UploadLogEntry>[], this.succeeded}): _logs = logs;
  

@override@JsonKey() final  bool isUploading;
 final  List<UploadLogEntry> _logs;
@override@JsonKey() List<UploadLogEntry> get logs {
  if (_logs is EqualUnmodifiableListView) return _logs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_logs);
}

/// Whether the last run finished successfully. Null while idle or running.
@override final  bool? succeeded;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadStateCopyWith<_UploadState> get copyWith => __$UploadStateCopyWithImpl<_UploadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&const DeepCollectionEquality().equals(other._logs, _logs)&&(identical(other.succeeded, succeeded) || other.succeeded == succeeded));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,const DeepCollectionEquality().hash(_logs),succeeded);

@override
String toString() {
  return 'UploadState(isUploading: $isUploading, logs: $logs, succeeded: $succeeded)';
}


}

/// @nodoc
abstract mixin class _$UploadStateCopyWith<$Res> implements $UploadStateCopyWith<$Res> {
  factory _$UploadStateCopyWith(_UploadState value, $Res Function(_UploadState) _then) = __$UploadStateCopyWithImpl;
@override @useResult
$Res call({
 bool isUploading, List<UploadLogEntry> logs, bool? succeeded
});




}
/// @nodoc
class __$UploadStateCopyWithImpl<$Res>
    implements _$UploadStateCopyWith<$Res> {
  __$UploadStateCopyWithImpl(this._self, this._then);

  final _UploadState _self;
  final $Res Function(_UploadState) _then;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUploading = null,Object? logs = null,Object? succeeded = freezed,}) {
  return _then(_UploadState(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,logs: null == logs ? _self._logs : logs // ignore: cast_nullable_to_non_nullable
as List<UploadLogEntry>,succeeded: freezed == succeeded ? _self.succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
