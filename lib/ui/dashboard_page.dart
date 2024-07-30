import 'package:memories/main.dart';

import 'number_of_memories.dart';
import 'memories_list.dart';
import 'settings_page.dart';

class DashboardPage extends UI {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Memories'.text(),
        actions: [
          IconButton(
            onPressed: () => dispatch(ToggleThemeModeAct()),
            icon: Icon(
              switch (state.themeMode) {
                ThemeMode.system => Icons.auto_mode,
                ThemeMode.light => Icons.light_mode,
                ThemeMode.dark => Icons.dark_mode,
              },
            ),
          ).pad(),
        ],
      ),
      body: [
        NumberOfMemories(),
        MemoriesList(),
        SettingsPage(),
      ][state.navigationIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => CreateMemoryPage(),
        ),
        child: Icon(Icons.image),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: state.navigationIndex,
        onDestinationSelected: (index) =>
            dispatch(SelectNavigationIndexAct(index)),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.memory),
            label: 'Memories',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
