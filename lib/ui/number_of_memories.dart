import 'package:memories/main.dart';

class NumberOfMemories extends UI {
  @override
  Widget build(context) => state.memories.length.text(2.4).center();
}
