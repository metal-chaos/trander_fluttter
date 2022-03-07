// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseState _$PurchaseStateFromJson(Map<String, dynamic> json) {
  return _PurchaseState.fromJson(json);
}

/// @nodoc
class _$PurchaseStateTearOff {
  const _$PurchaseStateTearOff();

  _PurchaseState call(
      {bool isLoading = false,
      int purchaseType = 1,
      Offerings? offerings,
      double monthlyPrice = 0,
      double yearOfMonthlyPrice = 0,
      double offPercent = 0}) {
    return _PurchaseState(
      isLoading: isLoading,
      purchaseType: purchaseType,
      offerings: offerings,
      monthlyPrice: monthlyPrice,
      yearOfMonthlyPrice: yearOfMonthlyPrice,
      offPercent: offPercent,
    );
  }

  PurchaseState fromJson(Map<String, Object?> json) {
    return PurchaseState.fromJson(json);
  }
}

/// @nodoc
const $PurchaseState = _$PurchaseStateTearOff();

/// @nodoc
mixin _$PurchaseState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get purchaseType => throw _privateConstructorUsedError;
  Offerings? get offerings => throw _privateConstructorUsedError;
  double get monthlyPrice => throw _privateConstructorUsedError;
  double get yearOfMonthlyPrice => throw _privateConstructorUsedError;
  double get offPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseStateCopyWith<PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      double monthlyPrice,
      double yearOfMonthlyPrice,
      double offPercent});

  $OfferingsCopyWith<$Res>? get offerings;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  final PurchaseState _value;
  // ignore: unused_field
  final $Res Function(PurchaseState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? purchaseType = freezed,
    Object? offerings = freezed,
    Object? monthlyPrice = freezed,
    Object? yearOfMonthlyPrice = freezed,
    Object? offPercent = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: offerings == freezed
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      monthlyPrice: monthlyPrice == freezed
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      yearOfMonthlyPrice: yearOfMonthlyPrice == freezed
          ? _value.yearOfMonthlyPrice
          : yearOfMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      offPercent: offPercent == freezed
          ? _value.offPercent
          : offPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $OfferingsCopyWith<$Res>? get offerings {
    if (_value.offerings == null) {
      return null;
    }

    return $OfferingsCopyWith<$Res>(_value.offerings!, (value) {
      return _then(_value.copyWith(offerings: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseStateCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$PurchaseStateCopyWith(
          _PurchaseState value, $Res Function(_PurchaseState) then) =
      __$PurchaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      double monthlyPrice,
      double yearOfMonthlyPrice,
      double offPercent});

  @override
  $OfferingsCopyWith<$Res>? get offerings;
}

/// @nodoc
class __$PurchaseStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements _$PurchaseStateCopyWith<$Res> {
  __$PurchaseStateCopyWithImpl(
      _PurchaseState _value, $Res Function(_PurchaseState) _then)
      : super(_value, (v) => _then(v as _PurchaseState));

  @override
  _PurchaseState get _value => super._value as _PurchaseState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? purchaseType = freezed,
    Object? offerings = freezed,
    Object? monthlyPrice = freezed,
    Object? yearOfMonthlyPrice = freezed,
    Object? offPercent = freezed,
  }) {
    return _then(_PurchaseState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: offerings == freezed
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      monthlyPrice: monthlyPrice == freezed
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      yearOfMonthlyPrice: yearOfMonthlyPrice == freezed
          ? _value.yearOfMonthlyPrice
          : yearOfMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      offPercent: offPercent == freezed
          ? _value.offPercent
          : offPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseState implements _PurchaseState {
  const _$_PurchaseState(
      {this.isLoading = false,
      this.purchaseType = 1,
      this.offerings,
      this.monthlyPrice = 0,
      this.yearOfMonthlyPrice = 0,
      this.offPercent = 0});

  factory _$_PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseStateFromJson(json);

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final int purchaseType;
  @override
  final Offerings? offerings;
  @JsonKey()
  @override
  final double monthlyPrice;
  @JsonKey()
  @override
  final double yearOfMonthlyPrice;
  @JsonKey()
  @override
  final double offPercent;

  @override
  String toString() {
    return 'PurchaseState(isLoading: $isLoading, purchaseType: $purchaseType, offerings: $offerings, monthlyPrice: $monthlyPrice, yearOfMonthlyPrice: $yearOfMonthlyPrice, offPercent: $offPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.purchaseType, purchaseType) &&
            const DeepCollectionEquality().equals(other.offerings, offerings) &&
            const DeepCollectionEquality()
                .equals(other.monthlyPrice, monthlyPrice) &&
            const DeepCollectionEquality()
                .equals(other.yearOfMonthlyPrice, yearOfMonthlyPrice) &&
            const DeepCollectionEquality()
                .equals(other.offPercent, offPercent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(purchaseType),
      const DeepCollectionEquality().hash(offerings),
      const DeepCollectionEquality().hash(monthlyPrice),
      const DeepCollectionEquality().hash(yearOfMonthlyPrice),
      const DeepCollectionEquality().hash(offPercent));

  @JsonKey(ignore: true)
  @override
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      __$PurchaseStateCopyWithImpl<_PurchaseState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseStateToJson(this);
  }
}

abstract class _PurchaseState implements PurchaseState {
  const factory _PurchaseState(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      double monthlyPrice,
      double yearOfMonthlyPrice,
      double offPercent}) = _$_PurchaseState;

  factory _PurchaseState.fromJson(Map<String, dynamic> json) =
      _$_PurchaseState.fromJson;

  @override
  bool get isLoading;
  @override
  int get purchaseType;
  @override
  Offerings? get offerings;
  @override
  double get monthlyPrice;
  @override
  double get yearOfMonthlyPrice;
  @override
  double get offPercent;
  @override
  @JsonKey(ignore: true)
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
