// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:memories/main.dart';

final Reducer<ThemeMode> themeModeRM = (state, act) {
  if (act is SpecificThemeModeAct) {
    return act.themeMode ?? state;
  } else if (act is ToggleThemeModeAct) {
    switch (state) {
      case ThemeMode.system:
        return ThemeMode.light;
      case ThemeMode.light:
        return ThemeMode.dark;
      case ThemeMode.dark:
        return ThemeMode.system;
    }
  }
  return state;
};

class SpecificThemeModeAct {
  ThemeMode? themeMode;
  SpecificThemeModeAct({this.themeMode});
}

class ToggleThemeModeAct {}
