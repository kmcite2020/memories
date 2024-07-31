
// typedef AppMiddleware = Middleware<AppState>;

// final AppMiddleware navigationMW = (store, action, next) {
//   if (action is SelectNavigationIndexAct) {}
//   next(action);
// };

// final AppMiddleware persistenceMW = (store, action, next) async {
//   next(action);
//   // prefs.setString(persistenceKEY, jsonEncode(state.toJson()));
// };
// String persistenceKEY = 'state';

// AppState appState() {
//   // final string = prefs.getString(persistenceKEY);
//   // if (string != null) {
//   //   final json = jsonDecode(string);
//   //   if (json != null) {
//   //     return AppState.fromJson(json);
//   //   }
//   // }
//   return AppState();
// }

// final AppMiddleware passwordMW = (store, action, next) {
//   if (action is PasswordAct) {
//     log('$action');
//     if (action is PasswordClearedAct) {
//       dispatch(PasswordChangedAct(''));
//     }
//   }
//   next(action);
// };
