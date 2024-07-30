// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      navigationIndex: (json['navigationIndex'] as num?)?.toInt() ?? 0,
      password: json['password'] as String? ?? '',
      inputPassword: json['inputPassword'] as String? ?? '',
      memories: (json['memories'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Memory.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Memory>{},
      isFullscreen: json['isFullscreen'] as bool? ?? false,
      newMemory: json['newMemory'] == null
          ? const Memory()
          : Memory.fromJson(json['newMemory'] as Map<String, dynamic>),
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      visible: json['visible'] as bool? ?? true,
      getStarted: json['getStarted'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'navigationIndex': instance.navigationIndex,
      'password': instance.password,
      'inputPassword': instance.inputPassword,
      'memories': instance.memories,
      'isFullscreen': instance.isFullscreen,
      'newMemory': instance.newMemory,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'visible': instance.visible,
      'getStarted': instance.getStarted,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_$MemoryImpl _$$MemoryImplFromJson(Map<String, dynamic> json) => _$MemoryImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      path: json['path'] as String? ?? '',
      isHidden: json['isHidden'] as bool? ?? false,
    );

Map<String, dynamic> _$$MemoryImplToJson(_$MemoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'path': instance.path,
      'isHidden': instance.isHidden,
    };
