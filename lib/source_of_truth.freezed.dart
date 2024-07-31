// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_of_truth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SorceOfTruth _$SorceOfTruthFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SorceOfTruth {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get navigationIndex => throw _privateConstructorUsedError;
  String get inputPassword => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @RoutesConvertor()
  Routes get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SorceOfTruthCopyWith<SorceOfTruth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SorceOfTruthCopyWith<$Res> {
  factory $SorceOfTruthCopyWith(
          SorceOfTruth value, $Res Function(SorceOfTruth) then) =
      _$SorceOfTruthCopyWithImpl<$Res, SorceOfTruth>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      String password,
      int navigationIndex,
      String inputPassword,
      User user,
      @RoutesConvertor() Routes route});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SorceOfTruthCopyWithImpl<$Res, $Val extends SorceOfTruth>
    implements $SorceOfTruthCopyWith<$Res> {
  _$SorceOfTruthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? password = null,
    Object? navigationIndex = null,
    Object? inputPassword = null,
    Object? user = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      inputPassword: null == inputPassword
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Routes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SorceOfTruthCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      String password,
      int navigationIndex,
      String inputPassword,
      User user,
      @RoutesConvertor() Routes route});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SorceOfTruthCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? password = null,
    Object? navigationIndex = null,
    Object? inputPassword = null,
    Object? user = null,
    Object? route = null,
  }) {
    return _then(_$SettingsModelImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      inputPassword: null == inputPassword
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Routes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsModelImpl implements _SettingsModel {
  const _$SettingsModelImpl(
      {this.themeMode = ThemeMode.system,
      this.password = '',
      this.navigationIndex = 0,
      this.inputPassword = '',
      this.user = const User(),
      @RoutesConvertor() this.route = Routes.dashboard});

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final int navigationIndex;
  @override
  @JsonKey()
  final String inputPassword;
  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  @RoutesConvertor()
  final Routes route;

  @override
  String toString() {
    return 'SorceOfTruth(themeMode: $themeMode, password: $password, navigationIndex: $navigationIndex, inputPassword: $inputPassword, user: $user, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.navigationIndex, navigationIndex) ||
                other.navigationIndex == navigationIndex) &&
            (identical(other.inputPassword, inputPassword) ||
                other.inputPassword == inputPassword) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, password,
      navigationIndex, inputPassword, user, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(
      this,
    );
  }
}

abstract class _SettingsModel implements SorceOfTruth {
  const factory _SettingsModel(
      {final ThemeMode themeMode,
      final String password,
      final int navigationIndex,
      final String inputPassword,
      final User user,
      @RoutesConvertor() final Routes route}) = _$SettingsModelImpl;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  String get password;
  @override
  int get navigationIndex;
  @override
  String get inputPassword;
  @override
  User get user;
  @override
  @RoutesConvertor()
  Routes get route;
  @override
  @JsonKey(ignore: true)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.name = '', this.email = ''});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'User(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User({final String name, final String email}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
