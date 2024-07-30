import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/main.dart';

part 'models.freezed.dart';
part 'models.g.dart';



@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(0) final int navigationIndex,
    @Default('') final String password,
    @Default('') final String inputPassword,
    @Default(<String, Memory>{}) final Map<String, Memory> memories,
    @Default(false) final bool isFullscreen,
    @Default(Memory()) final Memory newMemory,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(true) final bool visible,
    @Default(false) final bool getStarted,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

@freezed
class Memory with _$Memory {
  const factory Memory({
    @Default('') final String id,
    @Default('') final String name,
    @Default('') final String description,
    @Default('') final String path,
    @Default(false) final bool isHidden,
  }) = _Memory;

  factory Memory.fromJson(Map<String, dynamic> json) => _$MemoryFromJson(json);
}
