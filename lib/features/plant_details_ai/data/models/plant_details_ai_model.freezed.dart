// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_details_ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantDetailsAiModel {

 String get watering; String get sunlight; String get tips;
/// Create a copy of PlantDetailsAiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantDetailsAiModelCopyWith<PlantDetailsAiModel> get copyWith => _$PlantDetailsAiModelCopyWithImpl<PlantDetailsAiModel>(this as PlantDetailsAiModel, _$identity);

  /// Serializes this PlantDetailsAiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantDetailsAiModel&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight)&&(identical(other.tips, tips) || other.tips == tips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,watering,sunlight,tips);

@override
String toString() {
  return 'PlantDetailsAiModel(watering: $watering, sunlight: $sunlight, tips: $tips)';
}


}

/// @nodoc
abstract mixin class $PlantDetailsAiModelCopyWith<$Res>  {
  factory $PlantDetailsAiModelCopyWith(PlantDetailsAiModel value, $Res Function(PlantDetailsAiModel) _then) = _$PlantDetailsAiModelCopyWithImpl;
@useResult
$Res call({
 String watering, String sunlight, String tips
});




}
/// @nodoc
class _$PlantDetailsAiModelCopyWithImpl<$Res>
    implements $PlantDetailsAiModelCopyWith<$Res> {
  _$PlantDetailsAiModelCopyWithImpl(this._self, this._then);

  final PlantDetailsAiModel _self;
  final $Res Function(PlantDetailsAiModel) _then;

/// Create a copy of PlantDetailsAiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? watering = null,Object? sunlight = null,Object? tips = null,}) {
  return _then(_self.copyWith(
watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantDetailsAiModel].
extension PlantDetailsAiModelPatterns on PlantDetailsAiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantDetailsAiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantDetailsAiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantDetailsAiModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantDetailsAiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantDetailsAiModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantDetailsAiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String watering,  String sunlight,  String tips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantDetailsAiModel() when $default != null:
return $default(_that.watering,_that.sunlight,_that.tips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String watering,  String sunlight,  String tips)  $default,) {final _that = this;
switch (_that) {
case _PlantDetailsAiModel():
return $default(_that.watering,_that.sunlight,_that.tips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String watering,  String sunlight,  String tips)?  $default,) {final _that = this;
switch (_that) {
case _PlantDetailsAiModel() when $default != null:
return $default(_that.watering,_that.sunlight,_that.tips);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantDetailsAiModel implements PlantDetailsAiModel {
  const _PlantDetailsAiModel({required this.watering, required this.sunlight, required this.tips});
  factory _PlantDetailsAiModel.fromJson(Map<String, dynamic> json) => _$PlantDetailsAiModelFromJson(json);

@override final  String watering;
@override final  String sunlight;
@override final  String tips;

/// Create a copy of PlantDetailsAiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantDetailsAiModelCopyWith<_PlantDetailsAiModel> get copyWith => __$PlantDetailsAiModelCopyWithImpl<_PlantDetailsAiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantDetailsAiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantDetailsAiModel&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight)&&(identical(other.tips, tips) || other.tips == tips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,watering,sunlight,tips);

@override
String toString() {
  return 'PlantDetailsAiModel(watering: $watering, sunlight: $sunlight, tips: $tips)';
}


}

/// @nodoc
abstract mixin class _$PlantDetailsAiModelCopyWith<$Res> implements $PlantDetailsAiModelCopyWith<$Res> {
  factory _$PlantDetailsAiModelCopyWith(_PlantDetailsAiModel value, $Res Function(_PlantDetailsAiModel) _then) = __$PlantDetailsAiModelCopyWithImpl;
@override @useResult
$Res call({
 String watering, String sunlight, String tips
});




}
/// @nodoc
class __$PlantDetailsAiModelCopyWithImpl<$Res>
    implements _$PlantDetailsAiModelCopyWith<$Res> {
  __$PlantDetailsAiModelCopyWithImpl(this._self, this._then);

  final _PlantDetailsAiModel _self;
  final $Res Function(_PlantDetailsAiModel) _then;

/// Create a copy of PlantDetailsAiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? watering = null,Object? sunlight = null,Object? tips = null,}) {
  return _then(_PlantDetailsAiModel(
watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
