import 'package:memories/features/memories/memories.dart';
import 'package:memories/source_of_truth.dart';
import 'package:memories/main.dart';

import 'user.dart';

class Settings extends UI {
  const Settings();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DropdownButtonFormField(
            value: sourceOfTruthBloc.themeMode(),
            items: ThemeMode.values
                .map(
                  (themeMode) => DropdownMenuItem(
                    value: themeMode,
                    child: themeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: sourceOfTruthBloc.themeMode,
          ).pad(),
          UserProfile(),
          ElevatedButton(
            onPressed: memoriesBloc.iterableOfMemories.isEmpty ? null : memoriesBloc.clear,
            child: 'Clear All Memories'.text(),
          ),
          ElevatedButton(
            onPressed: () {
              // dispatch(
              //   LockAppAct(),
              // );
            },
            child: 'Lock App'.text(),
          ).pad(),
          // state.password.text().pad(),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            initialValue: sourceOfTruthBloc.password(),
            onChanged: sourceOfTruthBloc.password,
          ).pad(),
          ElevatedButton(
            onPressed: () => sourceOfTruthBloc.password(''),
            child: 'Clear Password'.text(),
          ).pad(),
          // state.inputPassword.text().pad(),
          'Backup Options: Local backup options to SD card or external storage.'.text().pad(),
          'Security Settings: Options for setting up a local passcode, fingerprint, or face recognition for accessing the app.'
              .text()
              .pad(),
          'App Preferences: Customize themes, notification settings (for reminders to backup, etc.).'
              .text()
              .pad(),
          'Encryption: Local encryption for all stored photos and metadata.'.text().pad(),
          'Backup Options: Secure local backups to SD card or other external storage options.'
              .text()
              .pad(),
          'Consistent Color Scheme: Use a consistent and soothing color palette'.text().pad(),
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
        ],
      ),
    );
  }
}

class UserProfile extends UI {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              userBloc.name().text(),
              userBloc.email().text(),
            ],
          ).pad(),
        ),
        ElevatedButton(
          onPressed: () {
            RM.navigate.toDialog(UpdateUserDialog());
          },
          child: 'Update'.text(),
        ),
      ],
    );
  }
}

class UpdateUserDialog extends UI {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            initialValue: userBloc.name(),
            onChanged: userBloc.name,
          ).pad(),
          TextFormField(
            initialValue: userBloc.email(),
            onChanged: userBloc.email,
          ).pad(),
          IconButton.filled(
            onPressed: () {
              RM.navigate.back();
            },
            icon: Icon(Icons.done),
          ).pad(),
        ],
      ),
    );
  }
}
