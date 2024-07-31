// import 'package:memories/main.dart';

// class PasswordPage extends UI {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextFormField(
//             initialValue: state.inputPassword,
//             onChanged: (value) => dispatch(InputPasswordChangedAct(value)),
//           ).pad(),

//           // TextFormField().pad(),
//           ElevatedButton(
//             onPressed: state.password != state.inputPassword
//                 ? null
//                 : () {
//                     dispatch(UnlockAppAct());
//                   },
//             child: 'Unlock App'.text(),
//           ).pad().center(),
//         ],
//       ),
//     );
//   }
// }

// final Reducer<String> inputPasswordRM = (state, action) {
//   if (action is InputPasswordChangedAct) {
//     return action.value;
//   }
//   return state;
// };

// final Reducer<String> passwordRM = (state, action) {
//   if (action is PasswordChangedAct) {
//     return action.value;
//   } else if (action is PasswordClearedAct) {
//     return '';
//   }
//   return state;
// };

// class PasswordAct {
//   const PasswordAct();
//   @override
//   String toString() {
//     return '$runtimeType';
//   }
// }

// class InputPasswordChangedAct {
//   final String value;
//   const InputPasswordChangedAct(this.value);
// }

// class PasswordChangedAct extends PasswordAct {
//   final String value;
//   const PasswordChangedAct(this.value);
// }

// class PasswordClearedAct extends PasswordAct {
//   const PasswordClearedAct();
// }
