import 'package:memories/features/memories/memories.dart';

import '../../main.dart';

final MemoryBloc memoryBloc = MemoryBloc();

class MemoryBloc {
  late final memoryRM = RM.inject<Memory>(
    () => Memory(),
    sideEffects: SideEffects.onData(memoriesBloc.add),
  );
  Memory memory([Memory? value]) {
    if (value != null) {
      memoryRM.state = value;
    }
    return memoryRM.state;
  }

  String memoryName([String? value]) {
    if (value != null) {
      memory(memory().copyWith(name: value));
    }
    return memory().name;
  }

  String memoryDescription([String? value]) {
    if (value != null) {
      memory(memory().copyWith(description: value));
    }
    return memory().description;
  }

  String memoryPath([String? value]) {
    if (value != null) {
      memory(memory().copyWith(path: value));
    }
    return memory().path;
  }

  bool memoryIsHidden([bool? value]) {
    if (value != null) {
      memory(memory().copyWith(isHidden: value));
    }
    return memory().isHidden;
  }
}
