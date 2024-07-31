// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_of_truth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      password: json['password'] as String? ?? '',
      navigationIndex: (json['navigationIndex'] as num?)?.toInt() ?? 0,
      inputPassword: json['inputPassword'] as String? ?? '',
      user: json['user'] == null
          ? const User()
          : User.fromJson(json['user'] as Map<String, dynamic>),
      route: json['route'] == null
          ? Routes.dashboard
          : const RoutesConvertor().fromJson((json['route'] as num).toInt()),
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'password': instance.password,
      'navigationIndex': instance.navigationIndex,
      'inputPassword': instance.inputPassword,
      'user': instance.user,
      'route': const RoutesConvertor().toJson(instance.route),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };
