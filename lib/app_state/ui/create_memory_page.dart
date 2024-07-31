// import 'package:memories/main.dart';

// bool get isMemorySavable =>
//     state.newMemory.name == '' ||
//     state.newMemory.description == '' ||
//     state.newMemory.path == '';

// bool get isImagePicked => state.newMemory.path != '';
// final pickImage = () async {
//   final picked = await FilePicker.platform.pickFiles();
//   if (picked == null) return;
//   final path = picked.files.first.path;
//   if (path == null) return;
//   dispatch(NewMemoryPathAct()..path = path);
// };

// class CreateMemoryPage extends UI {
//   @override
//   Widget build(context) {
//     return Dialog(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextFormField(
//             initialValue: state.newMemory.name,
//             onChanged: (name) {
//               dispatch(NewMemoryNameAct()..name = name);
//             },
//           ).pad(),
//           TextFormField(
//             initialValue: state.newMemory.description,
//             onChanged: (description) {
//               dispatch(NewMemoryDescriptionAct()..description = description);
//             },
//           ).pad(),
//           ElevatedButton(
//             onPressed: isImagePicked ? null : pickImage,
//             child: 'Pick Image'.text(),
//           ).pad(),
//           ElevatedButton(
//             onPressed: isMemorySavable
//                 ? null
//                 : () {
//                     final memory = state.newMemory;
//                     dispatch(
//                       AddMemoryAct(
//                         memory.copyWith(id: randomID),
//                       ),
//                     );
//                     dispatch(NewMemoryClearAct());
//                     print(state.newMemory.id);
//                     Navigator.pop(context);
//                   },
//             child: 'Save Memory'.text(),
//           ).pad(),
//         ],
//       ).pad(),
//     );
//   }
// }
