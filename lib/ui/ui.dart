import 'package:memories/main.dart';

typedef UI = _UI<AppState>;

abstract class TopUI extends StatelessWidget {
  const TopUI({super.key});

  @override
  Widget build(context) {
    return StoreProvider(
      store: store,
      child: StoreBuilder<AppState>(
        onInit: (store) {
          log('$this');
        },
        builder: (context, store) {
          final borderRadius = BorderRadius.circular(8);
          final shape = RoundedRectangleBorder(borderRadius: borderRadius);
          final dialogTheme = DialogTheme(shape: shape);
          final buttonTheme = ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(shape: shape),
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: home(context),
            themeMode: state.themeMode,
            theme: ThemeData(
              dialogTheme: dialogTheme,
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(borderRadius: borderRadius),
                filled: true,
                fillColor: Colors.blue.withOpacity(.4),
              ),
              elevatedButtonTheme: buttonTheme,
              floatingActionButtonTheme:
                  FloatingActionButtonThemeData(shape: shape),
            ),
            darkTheme: ThemeData(
              dialogTheme: dialogTheme,
              brightness: Brightness.dark,
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.yellow.withOpacity(.1),
              ),
              elevatedButtonTheme: buttonTheme,
              floatingActionButtonTheme:
                  FloatingActionButtonThemeData(shape: shape),
            ),
          );
        },
      ),
    );
  }

  Widget home(BuildContext context);
}

abstract class _UI<S> extends StatefulWidget {
  static Store<S> _identity<S>(Store<S> store) => store;
  final bool rebuildOnChange;
  final OnInitCallback<S>? onInit;
  final OnDisposeCallback<S>? onDispose;
  final OnWillChangeCallback<Store<S>>? onWillChange;
  final OnDidChangeCallback<Store<S>>? onDidChange;
  final OnInitialBuildCallback<Store<S>>? onInitialBuild;
  const _UI({
    Key? key,
    this.onInit,
    this.onDispose,
    this.rebuildOnChange = true,
    this.onWillChange,
    this.onDidChange,
    this.onInitialBuild,
  }) : super(key: key);
  Widget build(BuildContext context);
  @override
  State<_UI<S>> createState() => _UIState<S>();
}

class _UIState<S> extends State<_UI<S>> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<S, Store<S>>(
      builder: (context, store) => widget.build(context),
      converter: _UI._identity,
      rebuildOnChange: widget.rebuildOnChange,
      onInit: widget.onInit,
      onDispose: widget.onDispose,
      onWillChange: widget.onWillChange,
      onDidChange: widget.onDidChange,
      onInitialBuild: widget.onInitialBuild,
    );
  }
}
