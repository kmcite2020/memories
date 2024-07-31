import 'package:memories/features/memories/memories.dart';
import 'package:memories/source_of_truth.dart';
import 'package:memories/main.dart';

import 'dashboard.dart';
import 'settings/settings.dart';

class Skeleton extends TopUI {
  @override
  Widget home(context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Icon(sourceOfTruthBloc.route().icon).pad(),
                '${sourceOfTruthBloc.route().name}'.text().pad(),
              ],
            ),
          ),
          Expanded(
            child: sourceOfTruthBloc.route().page,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...Routes.values.map(
                  (route) => IconButton.filledTonal(
                    onPressed: switch (route == sourceOfTruthBloc.route()) {
                      true => null,
                      false => () => sourceOfTruthBloc.route(route),
                    },
                    icon: Icon(route.icon),
                  ),
                ),
              ],
            ),
          ).pad(),
        ],
      ),
    );
  }
}

enum Routes {
  dashboard(Icons.dashboard, const Dashboard()),
  memories(Icons.memory, const Memories()),
  settings;

  const Routes([this.icon = Icons.settings, this.page = const Settings()]);
  final IconData icon;
  final Widget page;
}
