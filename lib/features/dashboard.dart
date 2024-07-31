import 'package:memories/features/memories/memories.dart';
import 'package:memories/main.dart';

class Dashboard extends UI {
  const Dashboard();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        '${memoriesBloc.length}'.text(2),
        ElevatedButton(
          onPressed: () {
            memoriesBloc.add(Memory(id: randomID));
          },
          child: 'new memory'.text(),
        ),
      ],
    );
  }
}
