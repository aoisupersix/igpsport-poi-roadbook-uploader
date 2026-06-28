// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'igpsport_poi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PoiCandidate {

 String get name; double get latitude; double get longitude; IgpsportPoiType get poiType; String get nameOrigin;
/// Create a copy of PoiCandidate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PoiCandidateCopyWith<PoiCandidate> get copyWith => _$PoiCandidateCopyWithImpl<PoiCandidate>(this as PoiCandidate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoiCandidate&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.poiType, poiType) || other.poiType == poiType)&&(identical(other.nameOrigin, nameOrigin) || other.nameOrigin == nameOrigin));
}


@override
int get hashCode => Object.hash(runtimeType,name,latitude,longitude,poiType,nameOrigin);

@override
String toString() {
  return 'PoiCandidate(name: $name, latitude: $latitude, longitude: $longitude, poiType: $poiType, nameOrigin: $nameOrigin)';
}


}

/// @nodoc
abstract mixin class $PoiCandidateCopyWith<$Res>  {
  factory $PoiCandidateCopyWith(PoiCandidate value, $Res Function(PoiCandidate) _then) = _$PoiCandidateCopyWithImpl;
@useResult
$Res call({
 String name, double latitude, double longitude, IgpsportPoiType poiType, String nameOrigin
});




}
/// @nodoc
class _$PoiCandidateCopyWithImpl<$Res>
    implements $PoiCandidateCopyWith<$Res> {
  _$PoiCandidateCopyWithImpl(this._self, this._then);

  final PoiCandidate _self;
  final $Res Function(PoiCandidate) _then;

/// Create a copy of PoiCandidate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? latitude = null,Object? longitude = null,Object? poiType = null,Object? nameOrigin = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,poiType: null == poiType ? _self.poiType : poiType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,nameOrigin: null == nameOrigin ? _self.nameOrigin : nameOrigin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PoiCandidate].
extension PoiCandidatePatterns on PoiCandidate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PoiCandidate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PoiCandidate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PoiCandidate value)  $default,){
final _that = this;
switch (_that) {
case _PoiCandidate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PoiCandidate value)?  $default,){
final _that = this;
switch (_that) {
case _PoiCandidate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double latitude,  double longitude,  IgpsportPoiType poiType,  String nameOrigin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PoiCandidate() when $default != null:
return $default(_that.name,_that.latitude,_that.longitude,_that.poiType,_that.nameOrigin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double latitude,  double longitude,  IgpsportPoiType poiType,  String nameOrigin)  $default,) {final _that = this;
switch (_that) {
case _PoiCandidate():
return $default(_that.name,_that.latitude,_that.longitude,_that.poiType,_that.nameOrigin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double latitude,  double longitude,  IgpsportPoiType poiType,  String nameOrigin)?  $default,) {final _that = this;
switch (_that) {
case _PoiCandidate() when $default != null:
return $default(_that.name,_that.latitude,_that.longitude,_that.poiType,_that.nameOrigin);case _:
  return null;

}
}

}

/// @nodoc


class _PoiCandidate implements PoiCandidate {
  const _PoiCandidate({required this.name, required this.latitude, required this.longitude, required this.poiType, required this.nameOrigin});
  

@override final  String name;
@override final  double latitude;
@override final  double longitude;
@override final  IgpsportPoiType poiType;
@override final  String nameOrigin;

/// Create a copy of PoiCandidate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PoiCandidateCopyWith<_PoiCandidate> get copyWith => __$PoiCandidateCopyWithImpl<_PoiCandidate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoiCandidate&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.poiType, poiType) || other.poiType == poiType)&&(identical(other.nameOrigin, nameOrigin) || other.nameOrigin == nameOrigin));
}


@override
int get hashCode => Object.hash(runtimeType,name,latitude,longitude,poiType,nameOrigin);

@override
String toString() {
  return 'PoiCandidate(name: $name, latitude: $latitude, longitude: $longitude, poiType: $poiType, nameOrigin: $nameOrigin)';
}


}

/// @nodoc
abstract mixin class _$PoiCandidateCopyWith<$Res> implements $PoiCandidateCopyWith<$Res> {
  factory _$PoiCandidateCopyWith(_PoiCandidate value, $Res Function(_PoiCandidate) _then) = __$PoiCandidateCopyWithImpl;
@override @useResult
$Res call({
 String name, double latitude, double longitude, IgpsportPoiType poiType, String nameOrigin
});




}
/// @nodoc
class __$PoiCandidateCopyWithImpl<$Res>
    implements _$PoiCandidateCopyWith<$Res> {
  __$PoiCandidateCopyWithImpl(this._self, this._then);

  final _PoiCandidate _self;
  final $Res Function(_PoiCandidate) _then;

/// Create a copy of PoiCandidate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? latitude = null,Object? longitude = null,Object? poiType = null,Object? nameOrigin = null,}) {
  return _then(_PoiCandidate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,poiType: null == poiType ? _self.poiType : poiType // ignore: cast_nullable_to_non_nullable
as IgpsportPoiType,nameOrigin: null == nameOrigin ? _self.nameOrigin : nameOrigin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
