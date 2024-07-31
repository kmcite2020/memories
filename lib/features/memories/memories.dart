import 'dart:convert';

import 'package:memories/main.dart';

import 'memory.dart';

class Memories extends UI {
  const Memories();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: memoriesBloc.iterableOfMemories
            .map(
              MemoryTile.new,
            )
            .toList(),
      ),
    );
  }
}

class MemoryTile extends UI {
  final Memory memory;
  MemoryTile(this.memory);
  @override
  Widget build(BuildContext context) {
    final image = Image.file(File(memory.path));
    return Stack(
      children: [
        SizedBox(
          height: 60,
          width: double.maxFinite,
        ),
        if (memory.path == '') SizedBox() else image,
        Positioned(
          left: 10,
          child: TextFormField(
            initialValue: memoryBloc.memoryName(),
            onChanged: memoryBloc.memoryName,
          ).pad(),
          right: 10,
        ),
        Positioned(
          top: 80,
          left: 10,
          right: 10,
          child: TextFormField(
            initialValue: memoryBloc.memoryDescription(),
            onChanged: memoryBloc.memoryDescription,
          ).pad(),
        ),
        Positioned(
          bottom: 0,
          child: memory.path.text(),
        ),
      ],
    );
  }
}

final memoriesBloc = MemoriesBloc();

class MemoriesBloc {
  final mapOfMemoriesRM = RM.inject<Map<String, Memory>>(
    () => {},
    persist: () => PersistState(
      key: 'memories',
      fromJson: (json) => (jsonDecode(json) as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          Memory.fromJson(value),
        ),
      ),
      toJson: (s) => jsonEncode(
        s.map(
          (key, value) => MapEntry(
            key,
            value.toJson(),
          ),
        ),
      ),
    ),
  );
  Map<String, Memory> mapOfMemories([Map<String, Memory>? value]) {
    if (value != null) {
      mapOfMemoriesRM.state = value;
    }
    return mapOfMemoriesRM.state;
  }

  Iterable<Memory> get iterableOfMemories => mapOfMemories().values;
  int get length => mapOfMemories().length;

  Memory memoryAt(int index) => iterableOfMemories.elementAt(index);
  Memory memoryByID(String id) => mapOfMemories()[id]!;

  void add(Memory memory) {
    mapOfMemories(
      Map.of(
        mapOfMemories()..[memory.id] = memory,
      ),
    );
  }

  void remove(String id) {
    mapOfMemories(
      Map.of(
        mapOfMemories()..remove(id),
      ),
    );
  }

  void clear() => mapOfMemories({});
}
