import 'package:memories/main.dart';
import 'package:memories/ui/password_page.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  OnInitCallback<AppState>? get onInit {
    return (store) {
      log('$this');
    };
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'Profile Information: Basic user profile details'.text().pad(),
        'Backup Options: Local backup options to SD card or external storage.'
            .text()
            .pad(),
        'Security Settings: Options for setting up a local passcode, fingerprint, or face recognition for accessing the app.'
            .text()
            .pad(),
        'App Preferences: Customize themes, notification settings (for reminders to backup, etc.).'
            .text()
            .pad(),
        'Encryption: Local encryption for all stored photos and metadata.'
            .text()
            .pad(),
        'Backup Options: Secure local backups to SD card or other external storage options.'
            .text()
            .pad(),
        'Consistent Color Scheme: Use a consistent and soothing color palette'
            .text()
            .pad(),
        '''
Example UI Flow
Welcome Screens: User sees the welcome and features screens, then sets up a local passcode.
Home Screen: User lands on the home screen with albums and recent memories.
Album View: User selects an album to view photos in a grid layout.
Photo View: User taps on a photo to view it full-screen with options for interaction.
Upload: User clicks the FAB to add a new memory by selecting a photo and adding details.
Settings: User navigates to settings to manage security preferences and local backups.'''
            .text()
            .pad(),
        ''.text().pad(),
        DropdownButtonFormField(
          value: state.themeMode,
          items: ThemeMode.values
              .map(
                (themeMode) => DropdownMenuItem(
                  value: themeMode,
                  child: themeMode.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (themeMode) =>
              dispatch(SpecificThemeModeAct(themeMode: themeMode)),
        ).pad(),
        ElevatedButton(
          onPressed: state.memories.isEmpty
              ? null
              : () {
                  dispatch(
                    ClearMemoriesAct(),
                  );
                },
          child: 'Clear All Memories'.text(),
        ),
        ElevatedButton(
          onPressed: () => dispatch(
            LockAppAct(),
          ),
          child: 'Lock App'.text(),
        ).pad(),
        state.password.text().pad(),
        TextFormField(
          decoration: InputDecoration(labelText: 'Password'),
          initialValue: state.password,
          onChanged: (value) => dispatch(PasswordChangedAct(value)),
        ).pad(),
        ElevatedButton(
          onPressed: () => dispatch(
            PasswordClearedAct(),
          ),
          child: 'Clear Password'.text(),
        ).pad(),
        state.inputPassword.text().pad(),
      ],
    );
  }
}
