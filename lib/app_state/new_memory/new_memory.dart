import 'package:memories/main.dart';

final Reducer<Memory> newMemoryRM = (state, act) {
  if (act is NewMemoryNameAct) {
    return state.copyWith(name: act.name);
  } else if (act is NewMemoryDescriptionAct) {
    return state.copyWith(description: act.description);
  } else if (act is NewMemoryPathAct) {
    return state.copyWith(path: act.path);
  } else if (act is NewMemoryClearAct) {
    return Memory();
  }
  return state;
};

class NewMemoryNameAct {
  String name = '';
}

class NewMemoryDescriptionAct {
  String description = '';
}

class NewMemoryPathAct {
  String path = '';
}

class NewMemoryClearAct {}
