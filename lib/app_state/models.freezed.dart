// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  int get navigationIndex => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get inputPassword => throw _privateConstructorUsedError;
  Map<String, Memory> get memories => throw _privateConstructorUsedError;
  bool get isFullscreen => throw _privateConstructorUsedError;
  Memory get newMemory => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get getStarted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {int navigationIndex,
      String password,
      String inputPassword,
      Map<String, Memory> memories,
      bool isFullscreen,
      Memory newMemory,
      ThemeMode themeMode,
      bool visible,
      bool getStarted});

  $MemoryCopyWith<$Res> get newMemory;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationIndex = null,
    Object? password = null,
    Object? inputPassword = null,
    Object? memories = null,
    Object? isFullscreen = null,
    Object? newMemory = null,
    Object? themeMode = null,
    Object? visible = null,
    Object? getStarted = null,
  }) {
    return _then(_value.copyWith(
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      inputPassword: null == inputPassword
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      memories: null == memories
          ? _value.memories
          : memories // ignore: cast_nullable_to_non_nullable
              as Map<String, Memory>,
      isFullscreen: null == isFullscreen
          ? _value.isFullscreen
          : isFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      newMemory: null == newMemory
          ? _value.newMemory
          : newMemory // ignore: cast_nullable_to_non_nullable
              as Memory,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      getStarted: null == getStarted
          ? _value.getStarted
          : getStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res> get newMemory {
    return $MemoryCopyWith<$Res>(_value.newMemory, (value) {
      return _then(_value.copyWith(newMemory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int navigationIndex,
      String password,
      String inputPassword,
      Map<String, Memory> memories,
      bool isFullscreen,
      Memory newMemory,
      ThemeMode themeMode,
      bool visible,
      bool getStarted});

  @override
  $MemoryCopyWith<$Res> get newMemory;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationIndex = null,
    Object? password = null,
    Object? inputPassword = null,
    Object? memories = null,
    Object? isFullscreen = null,
    Object? newMemory = null,
    Object? themeMode = null,
    Object? visible = null,
    Object? getStarted = null,
  }) {
    return _then(_$AppStateImpl(
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      inputPassword: null == inputPassword
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      memories: null == memories
          ? _value._memories
          : memories // ignore: cast_nullable_to_non_nullable
              as Map<String, Memory>,
      isFullscreen: null == isFullscreen
          ? _value.isFullscreen
          : isFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      newMemory: null == newMemory
          ? _value.newMemory
          : newMemory // ignore: cast_nullable_to_non_nullable
              as Memory,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      getStarted: null == getStarted
          ? _value.getStarted
          : getStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.navigationIndex = 0,
      this.password = '',
      this.inputPassword = '',
      final Map<String, Memory> memories = const <String, Memory>{},
      this.isFullscreen = false,
      this.newMemory = const Memory(),
      this.themeMode = ThemeMode.system,
      this.visible = true,
      this.getStarted = false})
      : _memories = memories;

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  @JsonKey()
  final int navigationIndex;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String inputPassword;
  final Map<String, Memory> _memories;
  @override
  @JsonKey()
  Map<String, Memory> get memories {
    if (_memories is EqualUnmodifiableMapView) return _memories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memories);
  }

  @override
  @JsonKey()
  final bool isFullscreen;
  @override
  @JsonKey()
  final Memory newMemory;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool visible;
  @override
  @JsonKey()
  final bool getStarted;

  @override
  String toString() {
    return 'AppState(navigationIndex: $navigationIndex, password: $password, inputPassword: $inputPassword, memories: $memories, isFullscreen: $isFullscreen, newMemory: $newMemory, themeMode: $themeMode, visible: $visible, getStarted: $getStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.navigationIndex, navigationIndex) ||
                other.navigationIndex == navigationIndex) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.inputPassword, inputPassword) ||
                other.inputPassword == inputPassword) &&
            const DeepCollectionEquality().equals(other._memories, _memories) &&
            (identical(other.isFullscreen, isFullscreen) ||
                other.isFullscreen == isFullscreen) &&
            (identical(other.newMemory, newMemory) ||
                other.newMemory == newMemory) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.getStarted, getStarted) ||
                other.getStarted == getStarted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      navigationIndex,
      password,
      inputPassword,
      const DeepCollectionEquality().hash(_memories),
      isFullscreen,
      newMemory,
      themeMode,
      visible,
      getStarted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final int navigationIndex,
      final String password,
      final String inputPassword,
      final Map<String, Memory> memories,
      final bool isFullscreen,
      final Memory newMemory,
      final ThemeMode themeMode,
      final bool visible,
      final bool getStarted}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  int get navigationIndex;
  @override
  String get password;
  @override
  String get inputPassword;
  @override
  Map<String, Memory> get memories;
  @override
  bool get isFullscreen;
  @override
  Memory get newMemory;
  @override
  ThemeMode get themeMode;
  @override
  bool get visible;
  @override
  bool get getStarted;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Memory _$MemoryFromJson(Map<String, dynamic> json) {
  return _Memory.fromJson(json);
}

/// @nodoc
mixin _$Memory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryCopyWith<Memory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCopyWith<$Res> {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) then) =
      _$MemoryCopyWithImpl<$Res, Memory>;
  @useResult
  $Res call(
      {String id, String name, String description, String path, bool isHidden});
}

/// @nodoc
class _$MemoryCopyWithImpl<$Res, $Val extends Memory>
    implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? path = null,
    Object? isHidden = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoryImplCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$$MemoryImplCopyWith(
          _$MemoryImpl value, $Res Function(_$MemoryImpl) then) =
      __$$MemoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String description, String path, bool isHidden});
}

/// @nodoc
class __$$MemoryImplCopyWithImpl<$Res>
    extends _$MemoryCopyWithImpl<$Res, _$MemoryImpl>
    implements _$$MemoryImplCopyWith<$Res> {
  __$$MemoryImplCopyWithImpl(
      _$MemoryImpl _value, $Res Function(_$MemoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? path = null,
    Object? isHidden = null,
  }) {
    return _then(_$MemoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoryImpl implements _Memory {
  const _$MemoryImpl(
      {this.id = '',
      this.name = '',
      this.description = '',
      this.path = '',
      this.isHidden = false});

  factory _$MemoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final bool isHidden;

  @override
  String toString() {
    return 'Memory(id: $id, name: $name, description: $description, path: $path, isHidden: $isHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, path, isHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryImplCopyWith<_$MemoryImpl> get copyWith =>
      __$$MemoryImplCopyWithImpl<_$MemoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryImplToJson(
      this,
    );
  }
}

abstract class _Memory implements Memory {
  const factory _Memory(
      {final String id,
      final String name,
      final String description,
      final String path,
      final bool isHidden}) = _$MemoryImpl;

  factory _Memory.fromJson(Map<String, dynamic> json) = _$MemoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get path;
  @override
  bool get isHidden;
  @override
  @JsonKey(ignore: true)
  _$$MemoryImplCopyWith<_$MemoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
