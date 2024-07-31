import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/main.dart';

import 'features/skeleton.dart';

part 'source_of_truth.freezed.dart';
part 'source_of_truth.g.dart';

@freezed
class SorceOfTruth with _$SorceOfTruth {
  const factory SorceOfTruth({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default('') final String password,
    @Default(0) final int navigationIndex,
    @Default('') final String inputPassword,
    @Default(User()) final User user,
    @RoutesConvertor() @Default(Routes.dashboard) final Routes route,
  }) = _SettingsModel;

  factory SorceOfTruth.fromJson(Map<String, dynamic> json) => _$SorceOfTruthFromJson(json);
}

class RoutesConvertor extends JsonConverter<Routes, int> {
  const RoutesConvertor();

  @override
  Routes fromJson(int json) => Routes.dashboard;

  @override
  int toJson(Routes object) => 0;
}

@freezed
class User with _$User {
  const factory User({
    @Default('') final String name,
    @Default('') final String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

final sourceOfTruthBloc = SourceOfTruthBloc();

final settingsRM = RM.inject(
  () => SorceOfTruth(),
  persist: () => PersistState(
    key: 'settings',
    fromJson: (json) => SorceOfTruth.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);

class SourceOfTruthBloc {
  SorceOfTruth settings([SorceOfTruth? value]) {
    if (value != null) settingsRM.state = value;
    return settingsRM.state;
  }

  String password([String? value]) {
    if (value != null) settings(settings().copyWith(password: value));
    return settings().password;
  }

  int navigationIndex([int? value]) {
    if (value != null) settings(settings().copyWith(navigationIndex: value));
    return settings().navigationIndex;
  }

  String inputPassword([String? value]) {
    if (value != null) settings(settings().copyWith(inputPassword: value));
    return settings().inputPassword;
  }

  ThemeMode themeMode([ThemeMode? value]) {
    if (value != null) settings(settings().copyWith(themeMode: value));
    return settings().themeMode;
  }

  User user([User? value]) {
    if (value != null) settings(settings().copyWith(user: value));
    return settings().user;
  }

  Routes route([Routes? value]) {
    if (value != null) settings(settings().copyWith(route: value));
    return settings().route;
  }
}
