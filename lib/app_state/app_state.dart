// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:memories/main.dart';
import 'package:memories/ui/password_page.dart';

final Reducer<AppState> appRM = (AppState state, act) {
  return state.copyWith(
    navigationIndex: navigationIndexRM(state.navigationIndex, act),
    isFullscreen: isFullScreenRM(state.isFullscreen, act),
    memories: memoriesRM(state.memories, act),
    newMemory: newMemoryRM(state.newMemory, act),
    themeMode: themeModeRM(state.themeMode, act),
    visible: visibleRM(state.visible, act),
    password: passwordRM(state.password, act),
    inputPassword: inputPasswordRM(state.inputPassword, act),
    getStarted: getStartedRM(state.getStarted, act),
  );
};
