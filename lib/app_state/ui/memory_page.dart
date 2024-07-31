// import 'package:memories/main.dart';

// class MemoryPage extends UI {
//   const MemoryPage({super.key, required this.id});
//   final String id;

//   @override
//   Widget build(context) {
//     final Memory? memory = state.memories[id];
//     if (memory == null) return Container();
//     final image = Hero(
//       tag: id,
//       child: Image.file(
//         File(memory.path),
//         fit: BoxFit.fill,
//         errorBuilder: (context, error, stackTrace) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               'Image not found'.text().center().pad(),
//               error.text().pad(),
//               ElevatedButton(
//                 onPressed: () async {
//                   final Memory? memory = state.memories[id];
//                   if (memory == null) return;
//                   final picked = await FilePicker.platform.pickFiles();
//                   if (picked == null) return;
//                   final path = picked.files.first.path;
//                   if (path == null) return;
//                   dispatch(AddMemoryAct(memory.copyWith(path: path)));
//                 },
//                 child: 'Add Image'.text(),
//               ).pad(),
//             ],
//           );
//         },
//       ).center(),
//     );
//     final fullScreenToggle = Positioned(
//       bottom: 8,
//       right: 8,
//       child: IconButton(
//         onPressed: () {
//           dispatch(ToggleFullscreenAct());
//         },
//         icon: Icon(Icons.fullscreen),
//       ),
//     );
//     final stack = Stack(
//       children: [
//         image,
//         fullScreenToggle,
//       ],
//     );

//     if (state.isFullscreen) {
//       return stack;
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: memory.name.text(),
//         ),
//         body: stack,
//       );
//     }
//   }
// }
