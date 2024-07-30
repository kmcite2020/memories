import 'package:memories/main.dart';

class MemoryTile extends UI {
  final Memory memory;
  const MemoryTile(
    this.memory, {
    super.key,
  });
  @override
  Widget build(context) {
    final image = Image.file(File(memory.path));
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MemoryPage(id: memory.id),
          ),
        );
      },
      child: Stack(
        children: [
          image,
          Positioned(
            left: 10,
            child: TextFormField(
              initialValue: memory.name,
              onChanged: (value) => dispatch(
                MemoryNameUpdateAct(memory.id, value),
              ),
            ).pad(),
            right: 10,
          ),
          Positioned(
            top: 80,
            left: 10,
            right: 10,
            child: TextFormField(
              initialValue: memory.description,
              onChanged: (value) => dispatch(
                MemoryDiscriptionUpdateAct(memory.id, value),
              ),
            ).pad(),
          ),
          Positioned(
            bottom: 0,
            child: memory.path.text(),
          ),
        ],
      ),
    );
  }
}
