import 'package:memories/main.dart';

final Reducer<bool> isFullScreenRM = (state, act) {
  if (act is ToggleFullscreenAct) {
    return !state;
  }
  return state;
};

class ToggleFullscreenAct {}
