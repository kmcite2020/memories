import 'package:memories/main.dart';

import 'memory_tile.dart';

class MemoriesList extends UI {
  const MemoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    if (state.memories.isEmpty) {
      return '--EMPTY--'.text().center();
    }
    return ListView(
      shrinkWrap: true,
      children: state.memories.values.map(
        (memory) {
          return MemoryTile(
            memory,
            key: Key(memory.id),
          );
        },
      ).toList(),
    );
  }
}
