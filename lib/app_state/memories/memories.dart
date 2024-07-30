import 'package:memories/main.dart';

final Reducer<Map<String, Memory>> memoriesRM = (state, act) {
  if (act is AddMemoryAct) {
    return state.addItem(act.memory);
  } else if (act is RemoveMemoryAct) {
    return state.removeItem(act.id);
  } else if (act is ClearMemoriesAct) {
    return state.clearAll();
  } else if (act is MemoryNameUpdateAct) {
    final item = state[act.id];
    return state.addItem(
      item!.copyWith(name: act.name),
    );
  } else if (act is MemoryDiscriptionUpdateAct) {
    final item = state[act.id];
    return state.addItem(
      item!.copyWith(description: act.description),
    );
  }
  return state;
};

abstract class MemoriesAct {
  const MemoriesAct();
}

class AddMemoryAct extends MemoriesAct {
  final Memory memory;
  AddMemoryAct(this.memory);
}

class RemoveMemoryAct extends MemoriesAct {
  late String id;
}

class ClearMemoriesAct extends MemoriesAct {}

class MemoryNameUpdateAct extends MemoriesAct {
  final String id;
  final String name;
  const MemoryNameUpdateAct(this.id, this.name);
}

class MemoryDiscriptionUpdateAct extends MemoriesAct {
  final String id;
  final String description;
  const MemoryDiscriptionUpdateAct(this.id, this.description);
}
