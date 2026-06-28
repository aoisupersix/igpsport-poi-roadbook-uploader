// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poi_type_mapping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PoiTypeMappingEntry {

 String get gpxType;@IgpsportPoiTypeConverter() IgpsportPoiType get igpsportType;
/// Create a copy of PoiTypeMappingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PoiTypeMappingEntryCopyWith<PoiTypeMappingEntry> get copyWith => _$PoiTypeMappingEntryCopyWithImpl<PoiTypeMappingEntry>(this as PoiTypeMappingEntry, _$identity);

  /// Serializes this PoiTypeMappingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoiTypeMappingEntry&&(identical(other.gpxType, gpxType) || other.gpxType == gpxType)&&(identical(other.igpsportType, igpsportType) || other.igpsportType == igpsportType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gpxType,igpsportType);

@override
String toString() {
  return 'PoiTypeMappingEntry(gpxType: $gpxType, igpsportType: $igpsportType)';
}


}

/// @nodoc
abstract mixin class $PoiTypeMappingEntryCopyWith<$Res>  {
  factory $PoiTypeMappingEntryCopyWith(PoiTypeMappingEntry value, $Res Function(PoiTypeMappingEntry) _then) = _$PoiTypeMappingEntryCopyWithImpl;
@useResult
$Res call({
 String gpxType,@IgpsportPoiTypeConverter() IgpsportPoiType igpsportType
});




}
/// @nodoc
class _$PoiTypeMappingEntryCopyWithImpl<$Res>
    implements $PoiTypeMappingEntryCopyWith<$Res> {
  _$PoiTypeMappingEntryCopyWithImpl(this._self, this._then);

  final PoiTypeMappingEntry _self;
  final $Res Function(PoiTypeMappingEntry) _then;

/// Create a copy of PoiTypeMappingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gpxType = null,Object? igpsportType = null,}) {
  return _then(_self.copyWith(
gpxType: null == gpxType ? _self.gpxType : gpxType // ignore: cast_nullable_to_non_nullable
as String,igpsportType: null == igpsportType ? _self.igpsportType : igpsportType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,
  ));
}

}


/// Adds pattern-matching-related methods to [PoiTypeMappingEntry].
extension PoiTypeMappingEntryPatterns on PoiTypeMappingEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PoiTypeMappingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PoiTypeMappingEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PoiTypeMappingEntry value)  $default,){
final _that = this;
switch (_that) {
case _PoiTypeMappingEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PoiTypeMappingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _PoiTypeMappingEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gpxType, @IgpsportPoiTypeConverter()  IgpsportPoiType igpsportType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PoiTypeMappingEntry() when $default != null:
return $default(_that.gpxType,_that.igpsportType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gpxType, @IgpsportPoiTypeConverter()  IgpsportPoiType igpsportType)  $default,) {final _that = this;
switch (_that) {
case _PoiTypeMappingEntry():
return $default(_that.gpxType,_that.igpsportType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gpxType, @IgpsportPoiTypeConverter()  IgpsportPoiType igpsportType)?  $default,) {final _that = this;
switch (_that) {
case _PoiTypeMappingEntry() when $default != null:
return $default(_that.gpxType,_that.igpsportType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PoiTypeMappingEntry implements PoiTypeMappingEntry {
  const _PoiTypeMappingEntry({required this.gpxType, @IgpsportPoiTypeConverter() required this.igpsportType});
  factory _PoiTypeMappingEntry.fromJson(Map<String, dynamic> json) => _$PoiTypeMappingEntryFromJson(json);

@override final  String gpxType;
@override@IgpsportPoiTypeConverter() final  IgpsportPoiType igpsportType;

/// Create a copy of PoiTypeMappingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PoiTypeMappingEntryCopyWith<_PoiTypeMappingEntry> get copyWith => __$PoiTypeMappingEntryCopyWithImpl<_PoiTypeMappingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PoiTypeMappingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoiTypeMappingEntry&&(identical(other.gpxType, gpxType) || other.gpxType == gpxType)&&(identical(other.igpsportType, igpsportType) || other.igpsportType == igpsportType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gpxType,igpsportType);

@override
String toString() {
  return 'PoiTypeMappingEntry(gpxType: $gpxType, igpsportType: $igpsportType)';
}


}

/// @nodoc
abstract mixin class _$PoiTypeMappingEntryCopyWith<$Res> implements $PoiTypeMappingEntryCopyWith<$Res> {
  factory _$PoiTypeMappingEntryCopyWith(_PoiTypeMappingEntry value, $Res Function(_PoiTypeMappingEntry) _then) = __$PoiTypeMappingEntryCopyWithImpl;
@override @useResult
$Res call({
 String gpxType,@IgpsportPoiTypeConverter() IgpsportPoiType igpsportType
});




}
/// @nodoc
class __$PoiTypeMappingEntryCopyWithImpl<$Res>
    implements _$PoiTypeMappingEntryCopyWith<$Res> {
  __$PoiTypeMappingEntryCopyWithImpl(this._self, this._then);

  final _PoiTypeMappingEntry _self;
  final $Res Function(_PoiTypeMappingEntry) _then;

/// Create a copy of PoiTypeMappingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gpxType = null,Object? igpsportType = null,}) {
  return _then(_PoiTypeMappingEntry(
gpxType: null == gpxType ? _self.gpxType : gpxType // ignore: cast_nullable_to_non_nullable
as String,igpsportType: null == igpsportType ? _self.igpsportType : igpsportType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,
  ));
}


}


/// @nodoc
mixin _$PoiTypeMapping {

 List<PoiTypeMappingEntry> get entries;@IgpsportPoiTypeConverter() IgpsportPoiType get defaultType;
/// Create a copy of PoiTypeMapping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PoiTypeMappingCopyWith<PoiTypeMapping> get copyWith => _$PoiTypeMappingCopyWithImpl<PoiTypeMapping>(this as PoiTypeMapping, _$identity);

  /// Serializes this PoiTypeMapping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoiTypeMapping&&const DeepCollectionEquality().equals(other.entries, entries)&&(identical(other.defaultType, defaultType) || other.defaultType == defaultType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entries),defaultType);

@override
String toString() {
  return 'PoiTypeMapping(entries: $entries, defaultType: $defaultType)';
}


}

/// @nodoc
abstract mixin class $PoiTypeMappingCopyWith<$Res>  {
  factory $PoiTypeMappingCopyWith(PoiTypeMapping value, $Res Function(PoiTypeMapping) _then) = _$PoiTypeMappingCopyWithImpl;
@useResult
$Res call({
 List<PoiTypeMappingEntry> entries,@IgpsportPoiTypeConverter() IgpsportPoiType defaultType
});




}
/// @nodoc
class _$PoiTypeMappingCopyWithImpl<$Res>
    implements $PoiTypeMappingCopyWith<$Res> {
  _$PoiTypeMappingCopyWithImpl(this._self, this._then);

  final PoiTypeMapping _self;
  final $Res Function(PoiTypeMapping) _then;

/// Create a copy of PoiTypeMapping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,Object? defaultType = null,}) {
  return _then(_self.copyWith(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<PoiTypeMappingEntry>,defaultType: null == defaultType ? _self.defaultType : defaultType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,
  ));
}

}


/// Adds pattern-matching-related methods to [PoiTypeMapping].
extension PoiTypeMappingPatterns on PoiTypeMapping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PoiTypeMapping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PoiTypeMapping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PoiTypeMapping value)  $default,){
final _that = this;
switch (_that) {
case _PoiTypeMapping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PoiTypeMapping value)?  $default,){
final _that = this;
switch (_that) {
case _PoiTypeMapping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PoiTypeMappingEntry> entries, @IgpsportPoiTypeConverter()  IgpsportPoiType defaultType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PoiTypeMapping() when $default != null:
return $default(_that.entries,_that.defaultType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PoiTypeMappingEntry> entries, @IgpsportPoiTypeConverter()  IgpsportPoiType defaultType)  $default,) {final _that = this;
switch (_that) {
case _PoiTypeMapping():
return $default(_that.entries,_that.defaultType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PoiTypeMappingEntry> entries, @IgpsportPoiTypeConverter()  IgpsportPoiType defaultType)?  $default,) {final _that = this;
switch (_that) {
case _PoiTypeMapping() when $default != null:
return $default(_that.entries,_that.defaultType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PoiTypeMapping implements PoiTypeMapping {
  const _PoiTypeMapping({required final  List<PoiTypeMappingEntry> entries, @IgpsportPoiTypeConverter() required this.defaultType}): _entries = entries;
  factory _PoiTypeMapping.fromJson(Map<String, dynamic> json) => _$PoiTypeMappingFromJson(json);

 final  List<PoiTypeMappingEntry> _entries;
@override List<PoiTypeMappingEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override@IgpsportPoiTypeConverter() final  IgpsportPoiType defaultType;

/// Create a copy of PoiTypeMapping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PoiTypeMappingCopyWith<_PoiTypeMapping> get copyWith => __$PoiTypeMappingCopyWithImpl<_PoiTypeMapping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PoiTypeMappingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoiTypeMapping&&const DeepCollectionEquality().equals(other._entries, _entries)&&(identical(other.defaultType, defaultType) || other.defaultType == defaultType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries),defaultType);

@override
String toString() {
  return 'PoiTypeMapping(entries: $entries, defaultType: $defaultType)';
}


}

/// @nodoc
abstract mixin class _$PoiTypeMappingCopyWith<$Res> implements $PoiTypeMappingCopyWith<$Res> {
  factory _$PoiTypeMappingCopyWith(_PoiTypeMapping value, $Res Function(_PoiTypeMapping) _then) = __$PoiTypeMappingCopyWithImpl;
@override @useResult
$Res call({
 List<PoiTypeMappingEntry> entries,@IgpsportPoiTypeConverter() IgpsportPoiType defaultType
});




}
/// @nodoc
class __$PoiTypeMappingCopyWithImpl<$Res>
    implements _$PoiTypeMappingCopyWith<$Res> {
  __$PoiTypeMappingCopyWithImpl(this._self, this._then);

  final _PoiTypeMapping _self;
  final $Res Function(_PoiTypeMapping) _then;

/// Create a copy of PoiTypeMapping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,Object? defaultType = null,}) {
  return _then(_PoiTypeMapping(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<PoiTypeMappingEntry>,defaultType: null == defaultType ? _self.defaultType : defaultType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,
  ));
}


}

// dart format on
