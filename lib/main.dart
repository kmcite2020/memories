import 'package:memories/app_state/app_middlewares.dart';
import 'package:memories/ui/password_page.dart';
import 'package:memories/ui/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'main.dart';
export 'package:memories/ui/dashboard_page.dart';
export 'dart:io';
export 'package:file_picker/file_picker.dart';
export 'package:flutter/material.dart';
export 'package:memories/app_state/app_state.dart';
export 'package:memories/app_state/memories/memories.dart';
export 'package:memories/ui/ui.dart';
export 'package:redux/redux.dart';
export 'dart:developer' show log;
export 'package:memories/app_state/models.dart';

export 'package:memories/ui/create_memory_page.dart';
export 'package:memories/ui/memory_page.dart';
export 'package:memories/app_state/is_fullscreen/is_fullscreen.dart';
export 'package:flutter_redux/flutter_redux.dart';
export 'package:uuid/uuid.dart';
export 'package:memories/app_state/extensions.dart';
export 'package:memories/app_state/navigation_index/navigation_index.dart';
export 'package:memories/app_state/new_memory/new_memory.dart';
export 'package:memories/app_state/theme_mode/theme_mode.dart';

late SharedPreferences prefs;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences.getInstance().then(
    (value) {
      return prefs = value;
    },
  ).then(
    (_) {
      RM.storageInitializer(SharedStorage(_)).then(
        (value) {
          runApp(
            App(),
          );
        },
      );
    },
  );
}

class SharedStorage implements IPersistStore {
  final SharedPreferences prefs;
  SharedStorage(this.prefs);
  @override
  Future<void> delete(String key) => prefs.remove(key);

  @override
  Future<void> deleteAll() => prefs.clear();

  @override
  Future<void> init() async {}

  @override
  Object? read(String key) => prefs.get(key);

  @override
  Future<void> write<T>(String key, T value) =>
      prefs.setString(key, value as String);
}

NextDispatcher get dispatch => store.dispatch;
AppState get state => store.state;

final store = Store<AppState>(
  appRM,
  initialState: appState(),
  middleware: [
    navigationMW,
    persistenceMW,
    passwordMW,
  ],
);

class App extends TopUI {
  const App({super.key});

  @override
  Widget home(context) {
    return Scaffold(
      body: Visibility(
        visible: state.getStarted,
        replacement: WelcomePage(),
        child: Visibility(
          visible: state.visible,
          child: PasswordPage(),
          replacement: DashboardPage(),
        ),
      ),
    );
  }
}

final Reducer<bool> getStartedRM = (state, action) {
  if (action is GetStartedAct) {
    return true;
  }
  return state;
};

class GetStartedAct {}

final Reducer<bool> visibleRM = (state, act) {
  if (act is LockAppAct) {
    return true;
  } else if (act is UnlockAppAct) {
    return false;
  }
  return state;
};

class LockAppAct {}

class UnlockAppAct {}
