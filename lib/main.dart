// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:memories/features/skeleton.dart';

import 'main.dart';

export 'dart:developer' show log;
export 'dart:io';
export 'package:file_picker/file_picker.dart';
export 'package:flutter/material.dart';
export 'package:flutter_redux/flutter_redux.dart';
export 'package:memories/app_state/app_state.dart';
export 'package:memories/app_state/extensions.dart';
export 'package:memories/app_state/is_fullscreen/is_fullscreen.dart';
export 'package:memories/app_state/memories/memories.dart';
export 'package:memories/app_state/models.dart';
export 'package:memories/app_state/navigation_index/navigation_index.dart';
export 'package:memories/app_state/new_memory/new_memory.dart';
export 'package:memories/app_state/theme_mode/theme_mode.dart';
export 'package:memories/app_state/ui/create_memory_page.dart';
export 'package:memories/app_state/ui/dashboard_page.dart';
export 'package:memories/app_state/ui/memory_page.dart';
export 'package:memories/app_state/ui/ui.dart';
export 'package:redux/redux.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

void main() async {
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  await RM.storageInitializer(HiveStorage());
  runApp(Skeleton());
}

class HiveStorage implements IPersistStore {
  late Box prefs;
  HiveStorage();
  @override
  Future<void> delete(String key) => prefs.delete(key);

  @override
  Future<void> deleteAll() => prefs.clear();

  @override
  Future<void> init() async {
    final appInfo = await PackageInfo.fromPlatform();
    await Hive.initFlutter();
    prefs = await Hive.openBox(appInfo.appName);
  }

  @override
  Object? read(String key) => prefs.get(key);

  @override
  Future<void> write<T>(String key, T value) => prefs.put(key, value);
}

// NextDispatcher get dispatch => store.dispatch;
// AppState get state => store.state;

// final store = Store<AppState>(
//   appRM,
//   initialState: appState(),
//   middleware: [
//     navigationMW,
//     persistenceMW,
//     passwordMW,
//   ],
// );

// class App extends TopUI {
//   const App({super.key});

//   @override
//   Widget home(context) {
//     return Scaffold(
//       body: Visibility(
//         visible: state.getStarted,
//         replacement: WelcomePage(),
//         child: Visibility(
//           visible: state.visible,
//           child: PasswordPage(),
//           replacement: DashboardPage(),
//         ),
//       ),
//     );
//   }
// }

// final Reducer<bool> getStartedRM = (state, action) {
//   if (action is GetStartedAct) {
//     return true;
//   }
//   return state;
// };

// class GetStartedAct {}

// final Reducer<bool> visibleRM = (state, act) {
//   if (act is LockAppAct) {
//     return true;
//   } else if (act is UnlockAppAct) {
//     return false;
//   }
//   return state;
// };

// class LockAppAct {}

// class UnlockAppAct {}
